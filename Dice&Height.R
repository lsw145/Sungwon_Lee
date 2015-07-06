# number of dice rolls
d = 100

# role two dice 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

hist(dice_roll,freq=FALSE)


plot(ecdf(dice_roll))
plot.ecdf(dice_roll)

#Pecentile of my height in class
x <- 67
height_inch <- x
height_sd <- (height_inch-70)/5
height1 <- pnorm(height_sd, mean=0, sd=1, lower.tail=T, log.p=F)
height1