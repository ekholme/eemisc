
#' Create a percentage as character
#'
#' @param num numerator
#' @param denom denominator
#' @param digits decimal points to return
#'
#' @return
#' @export
#'
#' @examples \dontrun {
#' library(magrittr)
#' library(dplyr)
#'
#' mtcars %>%
#'   mutate(perc = make_perc(cyl, mpg))
#' }
make_perc <- function(num, denom, digits = 2) {
  paste0(100*round(num/denom, digits = digits), "%")
}
