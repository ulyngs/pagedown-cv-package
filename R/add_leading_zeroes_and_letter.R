add_leading_zeroes_and_letter <- function(cv_entries_tibble, letter_to_pad = ""){
  if(nrow(cv_entries_tibble) > 9){
    cv_entries_tibble %>%
      arrange(date) %>%
      mutate(number = str_pad(row_number(), width = 2, side = "left", pad = "0"),
             number = str_c(letter_to_pad, number)) %>%
      arrange(desc(date))
  } else {
    cv_entries_tibble %>%
      arrange(date) %>%
      mutate(number = str_pad(row_number(), width = 1, side = "left", pad = "0"),
             number = str_c(letter_to_pad, number)) %>%
      arrange(desc(date))
  }
}
