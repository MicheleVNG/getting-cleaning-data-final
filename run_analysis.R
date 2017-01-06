# You should create one R script called run_analysis.R that does the following.
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with
#    the average of each variable for each activity and each subject.

library(readr)
library(dplyr)

# Change the working directory to the 'data' directory
basewd <- getwd()
setwd(file.path(basewd, "data"))

# Read activity labels and features labels, then name the columns
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
colnames(activity_labels) <- c("id", "ActivityLabel")
colnames(features) <- c("id", "FeatureName")

# Read train and test files
x_train 	<- read.table(file.path("train", "X_train.txt"), colClasses = "numeric")
y_train 	<- read.table(file.path("train", "Y_train.txt"))
subject_train 	<- read.table(file.path("train", "subject_train.txt"))
x_test 		<- read.table(file.path("test", "X_test.txt"), colClasses = "numeric")
y_test 		<- read.table(file.path("test", "Y_test.txt"))
subject_test 	<- read.table(file.path("test", "subject_test.txt"))

# Merge train and test data
all_measurements <- bind_rows(x_train, x_test)
all_activities <- bind_rows(y_train, y_test)
all_subjects <- bind_rows(subject_train, subject_test)

# Name the columns in the three data frames
colnames(all_measurements) <- features$FeatureName
colnames(all_activities) <- "activityId"
colnames(all_subjects) <- "subjectId"

# Filter out measurements that are not mean() or std()
all_measurements <- all_measurements[, grep("mean()|std()", colnames(all_measurements))]
all_measurements <- all_measurements[, -grep("meanFreq()", colnames(all_measurements))]


# NOW NEED TO MERGE TABLES INTO ONE DATASET


# dataset <- bind_cols(x_filtered, y_all, subject_all)
# colnames(dataset)



