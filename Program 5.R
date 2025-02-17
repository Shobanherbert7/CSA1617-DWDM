# Load necessary libraries
library(ggplot2)

# Sample data for age and %fat
age <- c(25, 30, 22, 35, 40, 28, 33, 31, 29, 27, 34, 36, 38, 24, 26, 32, 39, 23)
fat <- c(15, 20, 18, 22, 25, 19, 21, 17, 16, 24, 23, 20, 22, 19, 18, 21, 20, 15)

# (a) Calculate mean, median, and standard deviation
age_mean <- mean(age)
age_median <- median(age)
age_sd <- sd(age)

fat_mean <- mean(fat)
fat_median <- median(fat)
fat_sd <- sd(fat)

# Print results
cat("Age - Mean:", age_mean, "Median:", age_median, "SD:", age_sd, "\n")
cat("%Fat - Mean:", fat_mean, "Median:", fat_median, "SD:", fat_sd, "\n")

# (b) Draw boxplots for age and %fat
par(mfrow=c(1,2))
boxplot(age, main="Boxplot of Age", ylab="Age")
boxplot(fat, main="Boxplot of %Fat", ylab="%Fat")

# (c) Draw scatter plot and q-q plot
par(mfrow=c(1,2))
plot(age, fat, main="Scatter Plot of Age vs %Fat", xlab="Age", ylab="%Fat")
qqnorm(fat, main="Q-Q Plot of %Fat")
qqline(fat)
