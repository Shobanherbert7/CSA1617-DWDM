data(mtcars)

plot(mtcars$mpg, type = "l", col = "blue", ylim = range(c(mtcars$mpg, mtcars$qsec)), 
     xlab = "Index", ylab = "Values", main = "Line Chart of mpg and qsec")
lines(mtcars$qsec, col = "red")
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), lty = 1)
