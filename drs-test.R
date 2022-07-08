library(dplyr)
library(tidyr)
library(ggplot2)

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
