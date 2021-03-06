# Getting and Cleaning Data Project
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set using R. The goal is to prepare tidy data that can be used for later analysis. The original data represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The data downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Project Tasks
The code run_analysis.R performs the following tasks:
  1.  Merges the training and the test sets to create one data set.
  2.  Extracts only the measurements on the mean and standard deviation for each measurement.
  3.  Uses descriptive activity names to name the activities in the data set
  4.  Appropriately labels the data set with descriptive variable names.
  5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps and Assumptions
Simply run the `run_analysis.R` script to perform the tasks listed above. The major assumption in the script is that the Samsung data already sits in the R working directory (Based to the question design)

## How the Script Works
The Script is broken down in 8 major sections to achieve the tasks required

### 1 Loading Libraries
This section simple uses the library command in R to load required libraries in this case only the plyr library is used
`library(plyr)`

### 2 Loading variables
This section creates the `Project` directory if it doesn't already exist and extracts the dataset into that directory `unzip("./Dataset.zip",exdir="./Project")`. It then loads the test datasets, training datasets, features dataset and activities dataset into separate variables
```
## Loading features and activities
activities <- read.table("./Project/UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("./Project/UCI HAR Dataset/features.txt", header = FALSE)
```
```
## Loading test data into variables
testSet <- read.table("./Project/UCI HAR Dataset/test/X_test.txt", header = FALSE)
testLabels <- read.table("./Project/UCI HAR Dataset/test/y_test.txt", header = FALSE)
testSubject <- read.table("./Project/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
```
```
## Loading training data into variables
trainSet <- read.table("./Project/UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainLabels <- read.table("./Project/UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainSubject <- read.table("./Project/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
```

### 3 Merging into one dataset
This section performs `Task 1` by merging all the test and training datasets into one big dataset. It achieves this in two steps:
  1.  Merging matching training datasets to test datasets by simpling add the test rows to the training rows. At the end of this face only three (3) datasets will exist - features (mergedSet), activities (mergedLabels) and subjects (mergedSubject)
```
## Merging test to training datasets (Row Binding)
mergedSet <- rbind(testSet, trainSet)
mergedLabels <- rbind(testLabels, trainLabels)
mergedSubject <- rbind(testSubject, trainSubject)
```
  2.  Merging the resulting datasets by concatenating the columns to one another
```
## Merging the merged datasets into one dataset (Column Binding)
dataset <- cbind(mergedSubject, mergedLabels, mergedSet)
```
This section also takes care of renaming some column headers so as to make the columns more readable

### 4 Extracting Mean and Standard Deviation Columns for each measurement
The section performs `Task 2` by using regular expressions to get all feature references with the words `mean()` and `std()` - `featuresMeanStd <- grep("mean\\(\\)|std\\(\\)",features$V2, value=TRUE)`. It then creates a new vector of dataset names based on the mean and standard deviation features found `subsetnames <- c("Subject", "Labels", featuresMeanStd)` (this will allow the subset to contain the Subject and Label columns). Finally it uses the vector to create a new dataset that only contains values of what was found along with Subject and Label columns `datasubset <- subset(dataset,select=subsetnames)`

### 5 Adding the Activities Name to the dataset
This section performs `Task 3`. The `Labels` column is an integer column that acts like a point to the `activites` dataset (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). This section simple adds these values to the dataset based on the `Labels` column by using `merge` function `dataset_withActivities <- merge(activities, dataset , by="Labels", all.x=TRUE)`. It then sorts the new dataset by the `Labels` and `Subject` columns


### 6 Renaming Variables
This section performs `Task 4` by simply remaining some column headers with more descriptive names

### 7 Creating new data set
This section performs `Task 5` by subsetting out the measures in the dataset `dataset_withActivities[, 4:ncol(dataset_withActivities)]` and using the `aggregate` function based on the `mean` function to caluclate the averages by subject `Subject = dataset_withActivities$Subject` and activity `Activities = dataset_withActivities$Activities`

### 8 Output
This section outputs the new tidy data to a text file `TidyData.txt`
