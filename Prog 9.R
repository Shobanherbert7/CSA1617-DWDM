marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

library(ggplot2)
breaks_eq_freq <- quantile(marks, probs = seq(0, 1, length.out = 4))
hist_eq_freq <- ggplot(data.frame(marks), aes(x = marks)) + 
  geom_histogram(breaks = breaks_eq_freq, fill = "blue", alpha = 0.7) +
  labs(title = "Equal-Frequency Partitioning", x = "Marks", y = "Frequency")
print(hist_eq_freq)

breaks_eq_width <- seq(min(marks), max(marks), length.out = 4)
hist_eq_width <- ggplot(data.frame(marks), aes(x = marks)) + 
  geom_histogram(breaks = breaks_eq_width, fill = "red", alpha = 0.7) +
  labs(title = "Equal-Width Partitioning", x = "Marks", y = "Frequency")
print(hist_eq_width)

speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

iqr_speed <- IQR(speed)
sd_speed <- sd(speed)

cat("Inter Quartile Range:", iqr_speed, "\n")
cat("Standard Deviation:", sd_speed, "\n")
