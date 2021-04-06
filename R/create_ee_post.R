#' Create a blog post with ee specs
#'
#' This function wraps \code{distill::create_post()} to set options/load libraries in the resulting file
#'
#' @param ... arguments passed to \code{distill::create_post()}
#' @param open logical. Open the created file?
#'
#' @return
#' @export
#'
#'
#' @examples
#' \dontrun{
#' library(eemisc)
#' create_ee_post("Test Post")
#' }
create_ee_post <- function(..., open = TRUE) {

  tmp <- distill::create_post(..., edit = FALSE)

  yaml <- readLines(tmp, n = 12)

  con <- file(tmp, open = "w")

  on.exit(close(con), add = TRUE)

  body <- '

```{r setup, echo = TRUE, results = "hide", warning = FALSE, message = FALSE}
knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

library(tidyverse)
library(eemisc)
library(harrypotter)

herm <- harrypotter::hp(n = 1, option = "HermioneGranger")

opts <- options(
  ggplot2.discrete.fill = list(
    harrypotter::hp(n = 3, option = "HermioneGranger"),
    harrypotter::hp(n = 7, option = "Always")
  )
)

theme_set(theme_ee())
```

A message

  '

xfun::write_utf8(yaml, con)
xfun::write_utf8(body, con)

if (open == TRUE) usethis::edit_file(tmp)

}
