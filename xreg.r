// Snippets for building External Regressors

// Create a vector for a holiday
flag <- function(nth_day,days_in_year=365) {
    zeroes=rep(0,365)
    zeroes[nth_day]=1
    return(zeroes)
}
