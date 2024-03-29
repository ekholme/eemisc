% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{pct_to_str}
\alias{pct_to_str}
\title{Percent to string}
\usage{
pct_to_str(x, digits = 1, check_bounds = TRUE)
}
\arguments{
\item{x}{a numerical vector to convert}

\item{digits}{the number of digits to include in the converted percentage}

\item{check_bounds}{logical. If true, will require that 0 <= x <= 1. This is to protect against accidental conversions.}
}
\description{
This function takes a vector of numerical values you want to convert into a percentage and creates a character vector with the '%' sign
}
\examples{
\dontrun{
 x <- seq(0, 1, .1)
 y <- pct_to_str(x, 1)

 #set check_bounds = FALSE to convert values outside of 0 <= x <= 1
 x <- c(1.0, 1.1)
 y <- pct_to_str(x, 1, check_bounds = FALSE)
}

}
