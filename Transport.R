Transport=rbind(mean(log10(P[P$Year==2010,]$V))
                ,mean(log10(P[P$Year==2011,]$V))
                ,mean(log10(P[P$Year==2012,]$V))
                ,mean(log10(P[P$Year==2013,]$V))
                ,mean(log10(P[P$Year==2014,]$V)))
plot(Transport, type="l")
Year <- c(2010:2014)
Year
plot(Year,Transport, type = "l"
     
y2014 <- P[P$Year == 2014, ]
hist(log10(y2014$Value))