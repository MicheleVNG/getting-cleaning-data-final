# You should create one R script called run_analysis.R that does the following.
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with
#    the average of each variable for each activity and each subject.

library(readr)
library(dplyr)

basewd <- getwd()
setwd(file.path(basewd, "data"))

activity_labels <- read.table("activity_labels.txt")
colnames(activity_labels) <- c("id", "ActivityLabel")
features <- read.table("features.txt")
colnames(features) <- c("id", "FeatureName")

x_train <- read.table(file.path("train", "X_train.txt"), colClasses = "numeric")
y_train <- read.table(file.path("train", "Y_train.txt"))
subject_train <- read.table(file.path("train", "subject_train.txt"))
x_test <- read.table(file.path("test", "X_test.txt"), colClasses = "numeric")
y_test <- read.table(file.path("test", "Y_test.txt"))
subject_test <- read.table(file.path("test", "subject_test.txt"))

x_all <- bind_rows(x_train, x_test)
colnames(x_all) <- features$FeatureName
y_all <- bind_rows(y_train, y_test)
colnames(y_all) <- "activityId"
subject_all <- bind_rows(subject_train, subject_test)
colnames(subject_all) <- "subjectId"

# x_filtered <- x_all[, grep("mean()|std()", colnames(x_all))]
#### Not working at the moment -- grep selects also meanFreq()

# dataset <- bind_cols(x_filtered, y_all, subject_all)
# colnames(dataset)
