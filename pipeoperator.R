# �ϥ�%>%²�ƥH�U�{��

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- as.numeric(format(Sys.Date(), '%Y'))
birth_year <- this_year - straw_hat_df$age
birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
straw_hat_df$birth_date <- as.Date(birth_date_chr)
straw_hat_df$birth_date

#���J�ϥ�pipe�ݭn���M��
install.packages("magrittr")
library(magrittr)

#�@�~��g�p�U
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(., straw_hat_df$birthday, sep = "-") %>%
  as.Date()
straw_hat_df$birth_date