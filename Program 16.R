# Load necessary libraries
library(ggplot2)
library(dplyr)

# Read the diabetes dataset
diabetes_data <- read.csv("diabetes.csv")

# Scatterplot of Blood Pressure vs Age
ggplot(diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point() +
  labs(title = "Scatterplot of Blood Pressure vs Age",
       x = "Age",
       y = "Blood Pressure") +
  theme_minimal()

# Bar chart of average Blood Pressure by Age Group
diabetes_data %>%
  mutate(AgeGroup = cut(Age, breaks = seq(0, 100, by = 10), right = FALSE)) %>%
  group_by(AgeGroup) %>%
  summarise(AverageBloodPressure = mean(BloodPressure, na.rm = TRUE)) %>%
  ggplot(aes(x = AgeGroup, y = AverageBloodPressure)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Blood Pressure by Age Group",
       x = "Age Group",
       y = "Average Blood Pressure") +
  theme_minimal()
