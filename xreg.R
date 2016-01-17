# Snippets for building External Regressors

# Create a vector for a holiday
get_holiday_vector <- function(nth_day, days_in_year=365) {
  zeroes = rep(0, days_in_year)
  zeroes[nth_day] = 1
  return(zeroes)
}

get_holiday_xreg <- function(holiday_yday) {
  Map(holiday_vector, holiday_yday)
}

holidays = c("1-1-2014", "14-01-2014", "17-01-2014", "31-01-2014", "01-02-2014", "01-05-2014", "13-05-2014", "15-07-2014", "28-07-2014", "29-07-2014", "31-08-2014", "01-09-2014", "16-09-2014", "05-10-2014", "06-10-2014", "22-10-2014", "25-10-2014", "25-12-2014")
holiday_dates = as.Date(holidays, "%d-%m-%Y")
holiday_yday = yday(holiday_dates)

holiday_xreg = get_holiday_xreg(holiday_yday)

rangetag <- function(min, max, value){
  if(value>=min & value<=max)
    return(1)
  else
    return(0)
}
