sls <- read.csv("C:/Users/samsung0/Desktop/data set_insta.csv")

ye.model <- lm(Property_price~Transportation, data=sls)
sls$pred <- predict(ye.model, sls)
plot(sls$Property_price, sls$pred)
points(sls$Property_price, sls$pred, col="blue", pch=16)