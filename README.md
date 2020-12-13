
<!-- README.md is generated from README.Rmd. Please edit that file -->

# logProbs

<!-- badges: start -->
<!-- badges: end -->

The goal of logProbs is to provide basic functionality to deal with unnormalized log
probabilities and illustrate the need for a numerically stable way to calculate the log normalization constant.
It does this through implementing two functions that calculate normalized probabilities from unormalized log probabilities:

1) `normalize_log_probs` (naive numerically unstable)

2) `stable_noramlize_log_probs` (numerically stable version)

## Installation

You can install the released version of logProbs using `devtools` with:

    devtools::install_github("https://github.com/matteolepur/logProbs")

## Example

This is a basic example which shows you how to solve a common problem:

    library(logProbs)

    normalize_log_probs(c(-10, -10, -10))
    #> [1] 0.3333333 0.3333333 0.3333333
    stable_normalize_log_probs(c(-10, -10, -10))
    #> [1] 0.3333333 0.3333333 0.3333333
    normalize_log_probs(c(-1000, -1000, -1000))
    #> Error in normalize_log_probs(c(-1000, -1000, -1000)) : 
    #> The sum of normalized probabilities is outside the range of (1.0 - threshold, 1.0 + threshhold). We suggest the stable_normalize_log_probs().
    stable_normalize_log_probs(c(-1000, -1000, -1000))
    #> [1] 0.3333333 0.3333333 0.3333333
 
 ## Proof
    
Look at previous pushes for explanations of Exercise 1.1.
