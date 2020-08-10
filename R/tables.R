
#' Wrapper to quickly make html tables for blog
#'
#' @param x a dataframe or tibble
#'
#' @return
#' @export
#'
#' @examples \dontrun{
#' library(knitr)
#' library(kableExtra)
#' library(magrittr)
#'
#' #table
#' mtcars %>%
#'    select(mpg:disp) %>%
#'    make_table()
#' }
make_table <- function(x) {
  x %>%
    knitr::kable(format = "html") %>%
    kableExtra::kable_styling(bootstrap_options(c("condensed", "hover", "striped")))
}
