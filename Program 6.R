age_value <- 35
min_age <- 18
max_age <- 65  
mean_age <- 40
std_dev_age <- 12.94


min_max_normalized <- (age_value - min_age) / (max_age - min_age)

z_score_normalized <- (age_value - mean_age) / std_dev_age

decimal_scaling_normalized <- age_value / 100 

min_max_normalized
z_score_normalized
decimal_scaling_normalized
