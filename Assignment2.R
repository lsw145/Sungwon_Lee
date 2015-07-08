## Question 1
#(a) score <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
mean(score) / 92.2
#(b) 30 observations are enough to follow population parameter
#(c) se <- sd(score)/sqrt(length(score)) / 1.976529
#(d) The spread of the sampling distribution of the sample mean
#(e) low_ci <- mean(score) - 2*se / mean + 2(1.96)*se
high_ci <- mean(score) + 2*se / mean - 2(1.96)*se
ci <- c(low_ci, high_ci)
ci

# Question 2
Male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
Female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
layout(matrix(2:1, ncol=1))
hist(Male)
hist(Female)
t.test(Male, Female, conf.level = .95)
mean(Male)
mean(Female)
sd(Male)
sd(Female)

## Question 3
#a. F : We do not know the size of effect of the treatment from this test.
#b. T : The null hypothesis is rejected in significance level, 5%.
#c. F : We have a danger of reject in the probability of size of significance level. 
#d. F : We can not derive Type 2 error from this test.
#e. T : The null hypothesis could be not rejected in a significance level of 1% since the p-value is 0.04

## Question 4
A <- c(248,236,269,254,249,251,260,245,239,255)
B <- c(380,391,377,392,398,374)
A2 <- B/1.5
A2

# look data
layout(matrix(2:1, ncol = 1))
hist(A, xlim=c(350,410))
hist(A2, xlim=c(350,410))

wilcox.test(A, A2)

## Question 5
# Standard Deviation is a property of the random variable.
# Instead Standard Error is related to a measurement on a specific sample. 
# If n becomes large, SE goes 0 and clost to the population mean

