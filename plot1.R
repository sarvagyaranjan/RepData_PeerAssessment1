unzip("./activity.zip")
activityData <- read.csv("./activity.csv")
summary(activityData)
stepsPerDay <- aggregate(steps ~ date, activityData, sum, na.rm=TRUE)
hist(stepsPerDay$steps)
meanStepsPerDay <- mean(stepsPerDay$steps)
meanStepsPerDay
medianStepsPerDay <- median(stepsPerDay$steps)
medianStepsPerDay