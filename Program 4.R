# Data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# a) Smoothing by bin mean
library(dplyr)

bin_mean <- function(data, bin_size) {
  cut_data <- cut(data, breaks = seq(min(data), max(data), by = bin_size), include.lowest = TRUE)
  mean_data <- aggregate(data, by = list(cut_data), FUN = mean)
  return(mean_data)
}

mean_smoothed <- bin_mean(data, 10)
print(mean_smoothed)

# b) Smoothing by bin median
bin_median <- function(data, bin_size) {
  cut_data <- cut(data, breaks = seq(min(data), max(data), by = bin_size), include.lowest = TRUE)
  median_data <- aggregate(data, by = list(cut_data), FUN = median)
  return(median_data)
}

median_smoothed <- bin_median(data, 10)
print(median_smoothed)

# c) Smoothing by bin boundaries
bin_boundaries <- function(data, bin_size) {
  cut_data <- cut(data, breaks = seq(min(data), max(data), by = bin_size), include.lowest = TRUE)
  boundaries <- levels(cut_data)
  return(boundaries)
}

boundaries_smoothed <- bin_boundaries(data, 10)
print(boundaries_smoothed)
