points_scored <- c(15, 20, 22, 25, 30, 35, 40, 45, 50, 100)

boxplot(points_scored, 
        main = "Boxplot of Points Scored by Tennis Players", 
        ylab = "Points Scored", 
        col = "lightblue", 
        border = "darkblue")

grid()
