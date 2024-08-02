
data <- read.csv("activity.csv", colClasses= c("numeric","Date","numeric"))
data <- data.frame(data)
totalSteps <- with(data, aggregate(steps, by = list(date), sum, na.rm=TRUE))
datas <- data.frame(totalSteps)
hist(totalSteps$x, col="red")

meanSteps<-mean(totalSteps$x)
medianSteps <- median(totalSteps$x)
print(meanSteps)
print(medianSteps)
