# Getting and Cleaning Data final assigment
Final Assignment for the Getting and Cleaning Data course on Coursera

This README file is intended to explain how the [run_analysis.R](run_analysis.R) script works.

## Summary

*To be completed*

## Extended explanation

### Libraries

```{r}
library(plyr)
library(dplyr)
```

### Reading

```{r}
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
```

Since the script is placed in the root directory of this repo, it changes the working directory to the `data` folder, which is the folder containing the dataset extracted from the .zip file provided.

Then, the script reads the `activity_labels.txt` and `features.txt` files, which provide the descriptive names for the activities performed by the subjects and for the features (measurements).

Then, the script reads the x / y / subject files for both the `train` folder (70% of the data) and the `test` folder (30% of the data).  
Specifying `colClasses = "numeric"` speeds up reading the large `x_train.txt` and `x_test.txt` files.

### Merge into one dataset

```{r}
# Merge train and test data
all_measurements <- bind_rows(x_train, x_test)
all_activities <- bind_rows(y_train, y_test)
all_subjects <- bind_rows(subject_train, subject_test)

# Clear some unnecessary variables from the workspace
rm(list = c("x_train", "y_train", "subject_train", "x_test", "y_test", "subject_test"))
```

The x / y / subject R variables already have variables in columns and observations in rows, so the script uses `dplyr::bind_rows()` to create the full dataset (70% + 30%).

The dataset is still splitted into three variables, `all_measurements`, `all_activities` and `all_subjects`, which will be merged later on.

The script then `rm()`'s some now-unnecessary variables from the working environment, to free up memory.

### Create the dataset

#### Label everything

```{r}
# Name the columns in the three data frames
colnames(all_measurements) <- features$featureName
colnames(all_activities) <- "activityId"
colnames(all_subjects) <- "subjectId"

# Add labels to the all_actvities data frame
all_activities <- join(all_activities, activity_labels, by = "activityId")
```

The script names the measurements using the `features$featureName` character vector that was previously created from the `features.txt` file. The `all_activities` and `all_subjects` are each titled with a descriptive column name.

Then, the list of activities performed (`all_activities`) is labelled with the `activity_labels` through a `plyr::join()` function.

#### Clean and create the dataset

```{r}
# Filter out measurements that are not mean() or std()
all_measurements <- all_measurements[, grep("mean[(][)]|std[(][)]", colnames(all_measurements))]

# Merge everything in one dataset, and clean it up
dataset <- bind_cols(all_subjects, all_activities, all_measurements)
dataset <- dataset %>%
    select(-activityId) %>%w
    dplyr::rename(subject = subjectId, activity = activityLabel)
```

As required by the assignment instructions, the script "*Extracts only the measurements on the mean and standard deviation for each measurement.*" using a `grep()` search on the column names.

Everything is now ready for merging into one `dataset`, simply by `bind_cols()`.

The resulting `dataset` is then cleaned up a bit by removing the `activityId` column and renaming the `subjectId` and `activityLabel` columns to simpler names.

The resulting dataset can be described as a *wide* dataset, that is the best possible representation of the data which preserves the original observations as rows.

**\*\*Follows an explanation of an alternative clean dataset\*\*.**  
*To the evaluators: please consider only the previously described `dataset` variable as my solution to the assignment.*

An alternative, taller dataset could be created by using the `melt()` function to transform the measurement columns into one single variable which stores the feature names.

```{r}
library(reshape2)
molten_dataset <- melt(dataset, id = c("subject", "activity"), variable.name = "feature")

head(molten_dataset)
#   subject activity           feature     value
# 1       1 STANDING tBodyAcc-mean()-X 0.2885845
# 2       1 STANDING tBodyAcc-mean()-X 0.2784188
# 3       1 STANDING tBodyAcc-mean()-X 0.2796531
# 4       1 STANDING tBodyAcc-mean()-X 0.2791739
# 5       1 STANDING tBodyAcc-mean()-X 0.2766288
# 6       1 STANDING tBodyAcc-mean()-X 0.2771988
```

### Summary dataset

*To be completed*