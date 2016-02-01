## LOADING LIBRARIES
library(plyr)



## LOADING VARIABLES
## Downloading and unzipping dataset to the Project directory
if(!file.exists("./Project"))
{
  dir.create("./Project")
}

## ----PLEASE NOTE THAT THE CODE FOR DOWNLOADING INTO A DIRECTORY HAS BEEN COMMENTED OUT
## ----THIS IS DUE TO THE FACT THAT THE QUESTION SAYS THAT THE SAMSUNG DATA IS IN THE WORKING DIRECTORY
##url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(url,destfile="./Project/Dataset.zip")

unzip("./Dataset.zip",exdir="./Project") ##unzip command modified to check working directory

## Loading features and activities
activities <- read.table("./Project/UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("./Project/UCI HAR Dataset/features.txt", header = FALSE)

## Loading test data into variables
testSet <- read.table("./Project/UCI HAR Dataset/test/X_test.txt", header = FALSE)
testLabels <- read.table("./Project/UCI HAR Dataset/test/y_test.txt", header = FALSE)
testSubject <- read.table("./Project/UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Loading training data into variables
trainSet <- read.table("./Project/UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainLabels <- read.table("./Project/UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainSubject <- read.table("./Project/UCI HAR Dataset/train/subject_train.txt", header = FALSE)



## MERGING INTO ONE DATASET
## Merging test to training datasets (Row Binding)
mergedSet <- rbind(testSet, trainSet)
mergedLabels <- rbind(testLabels, trainLabels)
mergedSubject <- rbind(testSubject, trainSubject)


## Renaming the columns
names(mergedSet) <- features$V2
names(mergedLabels) <- "Labels"
names(mergedSubject) <- "Subject"
names(activities) <- c("Labels", "Activities")


## Merging the merged datasets into one dataset (Column Binding)
dataset <- cbind(mergedSubject, mergedLabels, mergedSet)



## EXTRACTING MEAN AND STANDARD DEVIATION COLUMNS FOR EACH MEASUREMENT
## Searching for values with mean() or std() in features dataset
featuresMeanStd <- grep("mean\\(\\)|std\\(\\)",features$V2, value=TRUE)

##Adding subject and labels to features subset
subsetnames <- c("Subject", "Labels", featuresMeanStd)

##Creating the data subset
datasubset <- subset(dataset,select=subsetnames)



## ADDING DESCRIPTIVE ACTIVITY NAMES
## Merging the dataset with activities and sorting on activities and subjects
dataset_withActivities <- merge(activities, dataset , by="Labels", all.x=TRUE)
dataset_withActivities <- arrange(dataset_withActivities, Labels, Subject)



## LABELLING COLUMNS WITH MORE DESCRIPTIVE NAMES
names(dataset_withActivities)<-gsub("^t", "time", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("^f", "frequency", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("Acc", "Accelerometer", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("Gyro", "Gyroscope", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("Mag", "Magnitude", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("BodyBody", "Body", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("mean\\(\\)", "Mean", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("std\\(\\)", "StandardDeviation", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("mad\\(\\)", "MedianAbsoluteDeviation", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("max\\(\\)", "MAX", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("min\\(\\)", "MIN", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("sma\\(\\)", "SignalMagnitudeArea", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("energy\\(\\)", "Energy", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("iqr\\(\\)", "InterquartileRange", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("entropy\\(\\)", "Entropy", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("arCoeff\\(\\)", "AutoregressionCoefficients", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("correlation\\(\\)", "Correlation", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("maxInds\\(\\)", "MaximumIndex", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("meanFreq\\(\\)", "MeanFrequency", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("skewness\\(\\)", "Skewness", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("kurtosis\\(\\)", "Kurtosis", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("bandsEnergy\\(\\)", "BandsEnergy", names(dataset_withActivities))
names(dataset_withActivities)<-gsub("angle\\(\\)", "Angle", names(dataset_withActivities))



## CREATING AN INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE BY SUBJECT AND ACTIVITY
tidyData <- aggregate(dataset_withActivities[, 4:ncol(dataset_withActivities)], by=list(Subject = dataset_withActivities$Subject, Activities = dataset_withActivities$Activities), mean)



## Creating tidy data text file
write.table(tidyData, "./Project/TidyData.txt", row.name=FALSE)
