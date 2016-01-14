MAPE <- function(actual, forecasted)
  100 * mean( abs(forecasted-actual) / abs(actual) )
