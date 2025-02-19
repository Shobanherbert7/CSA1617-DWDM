data("water")

plot(water$mortality, water$hardness, main="Mortality vs Hardness", xlab="Mortality", ylab="Hardness")

model <- lm(mortality ~ hardness, data=water)

predicted_mortality <- predict(model, newdata = data.frame(hardness = 88))
predicted_mortality
