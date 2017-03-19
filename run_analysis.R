setwd("D:/Users/Tara/Documents/Coursera/Data Science Specialization/3_Getting and Cleaning Data/Course Project")

library(reshape2)

##Download, unzip dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
if(!file.exists("galaxy_data.zip")){
  
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "galaxy_data.zip", mode ='wb')
}
if(!file.exists("UCI Smartphone Dataset")) {
 unzip("galaxy_data.zip") 
}

dateDownloaded <- date()
dateDownloaded
##[1] "Fri Mar 17 07:12:41 2017"

##ASSIGNMENT:  You should create one R script called run_analysis.R that does the following.

##1. Merges the training and the test sets to create one data set.
activityLabels <- read.table("UCI Smartphone Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI Smartphone Dataset/features.txt")
features[,2] <- as.character(features[,2])

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

##3. Uses descriptive activity names to name the activities in the data set
train <- read.table("UCI Smartphone Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI Smartphone Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI Smartphone Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI Smartphone Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI Smartphone Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI Smartphone Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

##4. Appropriately labels the data set with descriptive variable names.
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)