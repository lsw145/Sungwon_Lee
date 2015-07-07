# number of dice rolls

CLT <- function(no.throw = 5, no.rep = 500) {
  exp.res <- matrix(sample(1:6, no.throw * no.rep, replace = T), ncol = no.throw, byrow = T)
  
  # return(apply(exp.res, 1, mean))
  return(rowMeans(exp.res))
}
hist(CLT(no.throw = 5, no.rep = 500), nclass = 6, col = "light grey", border = "grey", main = "Central Limit Theorem")

# uniform distribution

hist(runif(10000)*10, main="")
means <- numeric(10000)
for (i in 1:10000){
  means[i] <- mean(runif(5)*10)
}
hist(means, freq=FALSE)
mean(means)
sd(means)
xv <- seq(0, 10, 0.1)
yv <- dnorm(xv, mean=mean(means), sd=sd(means))
lines(xv, yv)

