
`eemisc` has miscellaneous functions and themes for ee

# Stuff

## helper functions

  - `replace_null()`: a helper function to replace NULLs (useful for
    dealing with lists)
  - `%!in%`: a more intuitive way to test for x not in y

## ggplot

  - `theme_ee`: a theme for ggplot
  - `theme_eedark`: a dark version of `theme_ee`

## misc

  - `big_time()`: plays the “this shit is big time” drop from Your Mom’s
    House
  - `big_time_operator()`: wrap a function of your choosing to play the
    “this shit is big time” drop when called
  - `create_ee_post()`: a helper function to create a distill blog post
    for my [blog](www.ericekholm.com/blog/)

## Installation

This package probably won’t ever make it to CRAN. If you want, you can
install using the following:

``` r
remotes::install_github("ekholme/eemisc")
```
