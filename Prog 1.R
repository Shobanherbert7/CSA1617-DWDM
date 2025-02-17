age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

cumulative_frequencies <- cumsum(frequencies)
total_frequency <- sum(frequencies)

median_position <- total_frequency / 2

median_class_index <- which(cumulative_frequencies >= median_position)[1]

L <- as.numeric(strsplit(age_intervals[median_class_index], "-")[[1]][1]) # Lower boundary of median class
F <- ifelse(median_class_index > 1, cumulative_frequencies[median_class_index - 1], 0) # Cumulative frequency before median class
f <- frequencies[median_class_index] # Frequency of median class
h <- as.numeric(strsplit(age_intervals[median_class_index], "-")[[1]][2]) - L # Class width

# Compute Approximate Median using interpolation formula
median_value <- L + ((median_position - F) / f) * h

# Print result
cat("Approximate Median:", median_value, "\n")
