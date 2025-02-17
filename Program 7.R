pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_pencils <- mean(pencils)

median_pencils <- median(pencils)

mode_pencils <- as.numeric(names(sort(table(pencils), decreasing=TRUE)[1]))

mean_pencils
median_pencils
mode_pencils
