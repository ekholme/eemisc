
#' Not In
#'
#' A more intuitive way to test for x not in y
#'
#' @param lhs left-hand side
#' @param rhs right-hand size
#'
#' @return
#' @export
#'
#' @examples \dontrun{
#' a <- c("a", "b", "c", "d")
#' b <- c("a", "b")
#' a %!in% b
#' }
"%!in%" <- function(lhs, rhs) {
  !lhs %in% rhs
}


#' Replace NULL
#'
#' This function provides a simple way to replace NULLs. It's will be most useful in conjunction with {purrr} functions when working with lists
#'
#' @param x element to (potentially) replace
#' @param replacement replacement for NULL. Default is NA_character_
#'
#' @return
#' @export
#'
#' @examples \dontrun{
#' a <- NULL
#' replace_null(a)
#' }
replace_null <- function(x, replacement = NA_character_) {
  if (is.null(x)) replacement else x
}

#' Percent to string
#'
#' This function takes a vector of numerical values you want to convert into a percentage and creates a character vector with the '%' sign
#'
#' @param x a numerical vector to convert
#' @param digits the number of digits to include in the converted percentage
#' @param check_bounds logical. If true, will require that 0 <= x <= 1. This is to protect against accidental conversions.
#'
#' @export
#'
#' @examples \dontrun{
#'  x <- seq(0, 1, .1)
#'  y <- pct_to_str(x, 1)
#'
#'  #set check_bounds = FALSE to convert values outside of 0 <= x <= 1
#'  x <- c(1.0, 1.1)
#'  y <- pct_to_str(x, 1, check_bounds = FALSE)
#' }
#'
pct_to_str <- function(x, digits = 1, check_bounds = TRUE) {
  if (!is.numeric(x)) {
    stop("`x` must be numeric")
  }

  if (!is.logical(check_bounds)) {
    stop("`check_bounds` must be TRUE or FALSE")
  }

  if (check_bounds == TRUE & !(x >= 0 & x <= 1)) {
    stop("`x` must be between 0 and 1. If you are intentionally using a percentage outside of these bounds, set `check_bounds = FALSE`")
  }

  paste0(round(100 * x, digits = digits), "%")
}
