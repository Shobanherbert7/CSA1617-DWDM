data("AirPassengers")
hist(AirPassengers, breaks=seq(100, 700, by=150), xlim=c(100, 700), main="Histogram of AirPassengers", xlab="Number of Passengers", ylab="Frequency")
