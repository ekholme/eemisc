
#' THIS SHIT IS BIG TIME
#'
#' Let everyone know that this shit is big time
#'
#' @return
#' @export
#'
#' @examples \dontrun{
#' big_time()
#' }
big_time <- function() {

  beepr::beep(system.file("sounds/THIS SHIT IS BIG TIME.wav", package = "eemisc"))
}

#' Big Time Function Operator
#'
#' Wrap a function of your choosing with the "this shit is big time" YMH drop
#'
#' @param f Function to wrap
#'
#' @return
#' @export
#'
#' @examples \dontrun{
#' x <- 1:10
#'
#' big_time_mean <- big_time_op(mean)
#'
#' big_time_mean(x)
#' }
big_time_op <- function(f) {

  force(f)

  function(...) {
    big_time()

    f(...)
  }
}
