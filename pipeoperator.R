# 使用%>%簡化以下程式

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- as.numeric(format(Sys.Date(), '%Y'))
birth_year <- this_year - straw_hat_df$age
birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
straw_hat_df$birth_date <- as.Date(birth_date_chr)
straw_hat_df$birth_date

#載入使用pipe需要的套件
install.packages("magrittr")
library(magrittr)

#作業改寫如下
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(., straw_hat_df$birthday, sep = "-") %>%
  as.Date()
straw_hat_df$birth_date