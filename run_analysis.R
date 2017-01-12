library(readr)
library(plyr)
library(dplyr)

# Change the working directory to the 'data' directory
basewd <- getwd()
setwd(file.path(basewd, "data"))

# Read activity labels and features labels, then name the columns
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
colnames(activity_labels) <- c("activityId", "activityLabel")
colnames(features) <- c("featureId", "featureName")

# Read train and test files
x_train 	<- read.table(file.path("train", "X_train.txt"), colClasses = "numeric")
y_train 	<- read.table(file.path("train", "Y_train.txt"))
subject_train 	<- read.table(file.path("train", "subject_train.txt"))
x_test 		<- read.table(file.path("test", "X_test.txt"), colClasses = "numeric")
y_test 		<- read.table(file.path("test", "Y_test.txt"))
subject_test 	<- read.table(file.path("test", "subject_test.txt"))

# ### TASK 1 ###
# Merge train and test data
all_measurements <- bind_rows(x_train, x_test)
all_activities <- bind_rows(y_train, y_test)
all_subjects <- bind_rows(subject_train, subject_test)

# Clear some unnecessary variables from the workspace
rm(list = c("x_train", "y_train", "subject_train", "x_test", "y_test", "subject_test"))

# ### TASK 3 + 4 ###
# Name the columns in the three data frames
colnames(all_measurements) <- features$featureName
colnames(all_activities) <- "activityId"
colnames(all_subjects) <- "subjectId"

# Add labels to the all_actvities data frame
all_activities <- join(all_activities, activity_labels, by = "activityId")

# ### TASK 2 ###
# Filter out measurements that are not mean() or std()
all_measurements <- all_measurements[, grep("mean()|std()", colnames(all_measurements))]
all_measurements <- all_measurements[, -grep("meanFreq()", colnames(all_measurements))]

# Merge everything in one dataset, and clean it up
dataset <- bind_cols(all_subjects, all_activities, all_measurements)
dataset <- dataset %>%
	select(-activityId) %>%w
	dplyr::rename(subject = subjectId, activity = activityLabel)

# Possible alternative: 'tall' version of the same data ~ melting measurements in the dataset
# molten_dataset <- melt(dataset, id = c("subject", "activity"))

# ### TASK 5 ###
# Second summary dataset with the average of each variable for each activity and subject
summary_dataset <- dataset %>%
	tbl_df %>% 
	group_by(subject, activity) %>%
	summarize_each(funs(mean))