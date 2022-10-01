blank_year_when_repeated <- function(cv_entry_tibble){
  cv_entry_tibble %>%
    mutate(row_number = row_number()) %>%
    mutate(year = as.character(year),
           year = case_when(
             row_number == 1 ~ year,
             year == lag(year) ~ "",
             year != lag(year) ~ year
           )) %>%
    select(-row_number)
}
