library(dplyr)
library(tidyr)

# test drs

df <- read.csv("ncpi_manifest.csv") 
head(df)

df2 <- df %>%
  filter(grepl("drs", drs_uri))

drs  <- df2 %>%
  sample_n(10, replace = FALSE) %>%
  mutate(drs = gsub("drs:", "drs get https:", drs_uri)) %>%
  mutate(drs = gsub(".org/", ".org ", drs)) %>%
  select(drs)

colnames(drs) <- NULL
drs

write.table(drs, "drs-test.sh", row.names = F, quote = FALSE, sep = " ")

# open terminal and run. see README

## test http

df3 <- read.csv("ncpi_manifest_1.csv")

df4 <- df3 %>%
  filter(grepl("http", drs_uri))

https  <- df4 %>%
  sample_n(10, replace = FALSE) %>%
  mutate(http = paste('browseURL("', drs_uri, '")', sep = "")) %>%
  select(http)

colnames(https) <- NULL
https

write.table(https, "http-test.R", row.names = F, quote = FALSE, sep = " ")

# open terminal and run. see README