replace_first_name_with_initial_and_dot <- function(author_name) {
  str_replace(author_name, "(?<=\\S)\\S+", "\\.")
}

replace_first_names_in_author_list_with_initial_and_dot <- function(authors){
  authors_split <- str_split(authors, ",") %>%
    map(str_trim)

  authors_split[[1]] %>% map_chr(replace_first_name_with_initial_and_dot) %>%
    paste0(collapse = ", ")
}
