# Original data
data <- c(200, 300, 400, 600, 1000)

# Min-max normalization
min_max_normalized <- (data - min(data)) / (max(data) - min(data))

# Z-score normalization
z_score_normalized <- (data - mean(data)) / sd(data)

# Output results
min_max_normalized
z_score_normalized
