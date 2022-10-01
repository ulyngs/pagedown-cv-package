library(tidyverse)

## uncomment these lines to grab the latest version
# library(googlesheets4)
# gs4_deauth()
#
# store_sheet_in_csv <- function(sheet_name){
#   read_sheet("https://docs.google.com/spreadsheets/d/1ta71CAGkcLqm-W1UdVRA_JJSddWV2TsrRZsCnQlmOis/edit?usp=sharing",
#              sheet = sheet_name, col_types = c("c")) %>%
#     write_csv(here::here(str_c("data-raw/", sheet_name, ".csv")))
# }
#
# walk(c("cv_entries", "publications"), store_sheet_in_csv)

cv_entries <- read_csv("data-raw/cv_entries.csv")
publications <- read_csv("data-raw/publications.csv")

usethis::use_data(cv_entries, publications, overwrite = TRUE)
