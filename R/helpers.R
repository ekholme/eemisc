
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
