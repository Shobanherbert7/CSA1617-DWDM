age_data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_age <- mean(age_data)
median_age <- median(age_data)

mode_age <- as.numeric(names(sort(table(age_data), decreasing=TRUE)[1])
                       modality <- ifelse(length(unique(age_data)) == length(age_data), "No mode", 
                                          ifelse(length(unique(age_data)) == length(table(age_data)), "Multimodal", "Unimodal"))
                       
midrange_age <- (min(age_data) + max(age_data)) / 2
Q1 <- quantile(age_data, 0.25)
Q3 <- quantile(age_data, 0.75)
list(mean = mean_age, median = median_age, mode = mode_age, modality = modality, midrange = midrange_age, Q1 = Q1, Q3 = Q3)
                       