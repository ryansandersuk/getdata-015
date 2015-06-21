# Set the working directory as applicable, note the subdirectory requirement
# below
setwd("~/git/getdata-015")

##
## Please note, this analysis changes the instruction order so that the
## variables are meaningfully labelled earlier.
##
## This script assumes that there is a subdirectory UCI HAR Dataset containing
## the extracted data files.
##

# Read the data
train <- read.table("UCI HAR Dataset/train/X_train.txt", colClasses = "numeric")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")

test <- read.table("UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")

## Appropriately labels the data set with descriptive variable names. 
# Doing this now to make referencing the variables easier.

features <- read.table("UCI HAR Dataset/features.txt")

# Correct the common typos in some of the variable names; make naming consistent
features$V2 <- sub("BodyBody", "Body", features$V2)
features$V2 <- sub("\\),", ",", features$V2)
features$V2 <- sub("-", ".", features$V2)

# Cleanup the names
features$V2 <- sub("\\(\\)", "", features$V2)
features$V2 <- sub("-", ".", features$V2)

names(train) <- features$V2
names(test) <- features$V2

names(train_subject) <- "subject"
names(test_subject) <- "subject"

names(train_activity) <- "activity"
names(test_activity) <- "activity"

## Merges the training and the test sets to create one data set.
merged_train <- cbind(train_subject, train_activity, train)
merged_test <- cbind(test_subject, test_activity, test)

merged <- rbind(merged_train, merged_test)

## Extracts only the measurements on the mean and standard deviation for each
## measurement.
cols <- c(grep("mean$|mean[^F]", names(merged)), grep("std", names(merged)))
cols <- c(1, 2, cols)
merged.subset <- merged[, cols]

## Uses descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities$V2 <- tolower(activities$V2)
merged.subset$activity <- activities[merged.subset$activity,]$V2

## From the data set in step 4, creates a second, independent tidy data set with
## the average of each variable for each activity and each subject.
library(dplyr)

grouped <- group_by(merged.subset, subject, activity)
average_by_activity_subject <- summarise_each(grouped, funs(mean))

# Write the second, independent tidy data set to a txt file and print to the
# console
print(average_by_activity_subject)
write.table(average_by_activity_subject, "average_by_activity_subject.txt",
            row.names = FALSE)

# Start the codebook by listing out the variables in the tidy data set
variables <- names(average_by_activity_subject)

description <- variables
description <- sub("^", "Mean by subject and activity of ", description)

variables <- sub("^", "1. ", variables)

codestart <- paste(variables, description, sep = ": ")

write.table(codestart, "start_code_book.md", row.names = FALSE,
            col.names = FALSE)