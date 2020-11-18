
<!-- README.md is generated from README.Rmd. Please edit that file -->

# logProbs

<!-- badges: start -->
<!-- badges: end -->

The goal of logProbs is to provide basic functionality to deal with log
probabilities.

## Installation

You can install the released version of logProbs from
[CRAN](https://CRAN.R-project.org) with:

    install.packages("logProbs")

## Example

This is a basic example which shows you how to solve a common problem:

    library(logProbs)

    normalize_log_probs(c(-10, -10, -10))
    #> [1] 0.3333333 0.3333333 0.3333333
    normalize_log_probs(c(NA, -10, -10, -10), na.rm = TRUE)
    #> [1] 0.3333333 0.3333333 0.3333333
    normalize_log_probs(c(-100, -99, -99))
    #> [1] 0.1553624 0.4223188 0.4223188
