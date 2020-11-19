
<!-- README.md is generated from README.Rmd. Please edit that file -->

# logProbs

<!-- badges: start -->
<!-- badges: end -->

The goal of logProbs is to provide basic functionality to deal with unnormalized log
probabilities.

## Installation

You can install the released version of logProbs using `devtools` from
[here](https://github.com/matteolepur/logProbs) with:

    devtools::install_github("https://github.com/matteolepur/logProbs")

## Example

This is a basic example which shows you how to solve a common problem:

    library(logProbs)

    normalize_log_probs(c(-10, -10, -10))
    #> [1] 0.3333333 0.3333333 0.3333333
    normalize_log_probs(c(NA, -10, -10, -10), na.rm = TRUE)
    #> [1] 0.3333333 0.3333333 0.3333333
    normalize_log_probs(c(-100, -99, -99))
    #> [1] 0.1553624 0.4223188 0.4223188
    
### Explanation of Steps for Assignment

Steps 

1) load `library(devtools)` package.

2) use `create_package("logProbs")` to create an `R` package.

3) use `use_r("normalize_log_probs")` to create `R` folder and `normalize_log_probs.R` script for function in the R package.

4) click on function in `normalize_log_probs.R` go to `code > insert roxygen skeleton` and fill out function documentation. Specify the input and output types here.

4) edit description file with a title and package description, use `use_package("matrixStats")` to document package dependencies, and `use_mit_license("Matteo Lepur")` to document the package lincense.

5) use `document()` to build all documentation

6) use `load_all()` to check the function can be loaded and used properly in R.

7) use `?normalize_log_probs` to test that function documentation is proper.

8) use `use_test('normalize_log_probs')` to create `tests` folder and `test-normalize_log_probs.R` script.

9) use `check()` to ensure all tests pass.

10) use `use_readme_rmd()` to create a `.Rmd` folder to show basic functionality. We used a `.Rmd` file so that we can run code blocks.

11) use `build_readme()` to build a standard readme for github

12) use `use_vignette("Basic Usage")` to create a vignette for pedological purposes. The package is not comprehensive enough to really require a vignette but the purpose of the assignment was to create a simply `R` package.


