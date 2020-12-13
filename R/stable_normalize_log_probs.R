#' A function that calculates the normalized probabilities given the unormalized log probabilities in a numerically stable way
#'
#' @param log_probs a numeric vector containing unormalized log probabilities
#' @param na.rm a boolean indicating whether to remove NA values
#' @param verbose a boolean indicating whether to print function progress
#' @param threshhold a float that is a threshold for numeric error
#'
#' @return a numeric vector of normalized probabilities
#' @export
#'
#' @examples
#' stable_normalize_log_probs(c(-10, -10, -10))
#' stable_normalize_log_probs(c(NA, -10, -10, -10), na.rm = TRUE)
stable_normalize_log_probs <- function(log_probs, na.rm = FALSE, verbose = FALSE, threshhold=10^(-2)) {

  if (sum(is.na(log_probs)) > 0 & na.rm == FALSE){stop("An NA value was found in log_probs and na.rm = FALSE")}

  if (length(log_probs) == 0) {stop("log.probs is an empty numeric vector")}

  if (na.rm) {log_probs <- log_probs[!is.na(log_probs)]}

  max_log_probs = max(log_probs)

  total <- 0

  for (log_prob in log_probs){total <- total + exp(log_prob - max_log_probs)}    # more stable than log(sum(exp(log_probs)))

  log_C <- log(total) + max_log_probs

  if (verbose) {print("Calculated Log Probabilities Normalization Constant in Stable Way")}

  log_probs <- log_probs - log_C

  if (verbose) {print("Normalized Log probabilities")}

  probs <- exp(log_probs)

  if (verbose) {print("Transformed Log Probabilities to simplex probabilities")}

  return(probs)
}
