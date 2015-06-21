# Code book

This is the code book for the data contained in average_by_activity_subject.txt.

## Variables

1. subject: ID of subject; ranges from 1 to 30 inclusive
1. activity: One of walking, walking_upstairs, walking_downstairs, sitting,
standing, laying
1. tBodyAcc.mean-X: Mean by subject and activity of tBodyAcc.mean-X
1. tBodyAcc.mean-Y: Mean by subject and activity of tBodyAcc.mean-Y
1. tBodyAcc.mean-Z: Mean by subject and activity of tBodyAcc.mean-Z
1. tGravityAcc.mean-X: Mean by subject and activity of tGravityAcc.mean-X
1. tGravityAcc.mean-Y: Mean by subject and activity of tGravityAcc.mean-Y
1. tGravityAcc.mean-Z: Mean by subject and activity of tGravityAcc.mean-Z
1. tBodyAccJerk.mean-X: Mean by subject and activity of tBodyAccJerk.mean-X
1. tBodyAccJerk.mean-Y: Mean by subject and activity of tBodyAccJerk.mean-Y
1. tBodyAccJerk.mean-Z: Mean by subject and activity of tBodyAccJerk.mean-Z
1. tBodyGyro.mean-X: Mean by subject and activity of tBodyGyro.mean-X
1. tBodyGyro.mean-Y: Mean by subject and activity of tBodyGyro.mean-Y
1. tBodyGyro.mean-Z: Mean by subject and activity of tBodyGyro.mean-Z
1. tBodyGyroJerk.mean-X: Mean by subject and activity of tBodyGyroJerk.mean-X
1. tBodyGyroJerk.mean-Y: Mean by subject and activity of tBodyGyroJerk.mean-Y
1. tBodyGyroJerk.mean-Z: Mean by subject and activity of tBodyGyroJerk.mean-Z
1. tBodyAccMag.mean: Mean by subject and activity of tBodyAccMag.mean
1. tGravityAccMag.mean: Mean by subject and activity of tGravityAccMag.mean
1. tBodyAccJerkMag.mean: Mean by subject and activity of tBodyAccJerkMag.mean
1. tBodyGyroMag.mean: Mean by subject and activity of tBodyGyroMag.mean
1. tBodyGyroJerkMag.mean: Mean by subject and activity of tBodyGyroJerkMag.mean
1. fBodyAcc.mean-X: Mean by subject and activity of fBodyAcc.mean-X
1. fBodyAcc.mean-Y: Mean by subject and activity of fBodyAcc.mean-Y
1. fBodyAcc.mean-Z: Mean by subject and activity of fBodyAcc.mean-Z
1. fBodyAccJerk.mean-X: Mean by subject and activity of fBodyAccJerk.mean-X
1. fBodyAccJerk.mean-Y: Mean by subject and activity of fBodyAccJerk.mean-Y
1. fBodyAccJerk.mean-Z: Mean by subject and activity of fBodyAccJerk.mean-Z
1. fBodyGyro.mean-X: Mean by subject and activity of fBodyGyro.mean-X
1. fBodyGyro.mean-Y: Mean by subject and activity of fBodyGyro.mean-Y
1. fBodyGyro.mean-Z: Mean by subject and activity of fBodyGyro.mean-Z
1. fBodyAccMag.mean: Mean by subject and activity of fBodyAccMag.mean
1. fBodyAccJerkMag.mean: Mean by subject and activity of fBodyAccJerkMag.mean
1. fBodyGyroMag.mean: Mean by subject and activity of fBodyGyroMag.mean
1. fBodyGyroJerkMag.mean: Mean by subject and activity of fBodyGyroJerkMag.mean
1. tBodyAcc.std-X: Mean by subject and activity of tBodyAcc.std-X
1. tBodyAcc.std-Y: Mean by subject and activity of tBodyAcc.std-Y
1. tBodyAcc.std-Z: Mean by subject and activity of tBodyAcc.std-Z
1. tGravityAcc.std-X: Mean by subject and activity of tGravityAcc.std-X
1. tGravityAcc.std-Y: Mean by subject and activity of tGravityAcc.std-Y
1. tGravityAcc.std-Z: Mean by subject and activity of tGravityAcc.std-Z
1. tBodyAccJerk.std-X: Mean by subject and activity of tBodyAccJerk.std-X
1. tBodyAccJerk.std-Y: Mean by subject and activity of tBodyAccJerk.std-Y
1. tBodyAccJerk.std-Z: Mean by subject and activity of tBodyAccJerk.std-Z
1. tBodyGyro.std-X: Mean by subject and activity of tBodyGyro.std-X
1. tBodyGyro.std-Y: Mean by subject and activity of tBodyGyro.std-Y
1. tBodyGyro.std-Z: Mean by subject and activity of tBodyGyro.std-Z
1. tBodyGyroJerk.std-X: Mean by subject and activity of tBodyGyroJerk.std-X
1. tBodyGyroJerk.std-Y: Mean by subject and activity of tBodyGyroJerk.std-Y
1. tBodyGyroJerk.std-Z: Mean by subject and activity of tBodyGyroJerk.std-Z
1. tBodyAccMag.std: Mean by subject and activity of tBodyAccMag.std
1. tGravityAccMag.std: Mean by subject and activity of tGravityAccMag.std
1. tBodyAccJerkMag.std: Mean by subject and activity of tBodyAccJerkMag.std
1. tBodyGyroMag.std: Mean by subject and activity of tBodyGyroMag.std
1. tBodyGyroJerkMag.std: Mean by subject and activity of tBodyGyroJerkMag.std
1. fBodyAcc.std-X: Mean by subject and activity of fBodyAcc.std-X
1. fBodyAcc.std-Y: Mean by subject and activity of fBodyAcc.std-Y
1. fBodyAcc.std-Z: Mean by subject and activity of fBodyAcc.std-Z
1. fBodyAccJerk.std-X: Mean by subject and activity of fBodyAccJerk.std-X
1. fBodyAccJerk.std-Y: Mean by subject and activity of fBodyAccJerk.std-Y
1. fBodyAccJerk.std-Z: Mean by subject and activity of fBodyAccJerk.std-Z
1. fBodyGyro.std-X: Mean by subject and activity of fBodyGyro.std-X
1. fBodyGyro.std-Y: Mean by subject and activity of fBodyGyro.std-Y
1. fBodyGyro.std-Z: Mean by subject and activity of fBodyGyro.std-Z
1. fBodyAccMag.std: Mean by subject and activity of fBodyAccMag.std
1. fBodyAccJerkMag.std: Mean by subject and activity of fBodyAccJerkMag.std
1. fBodyGyroMag.std: Mean by subject and activity of fBodyGyroMag.std
1. fBodyGyroJerkMag.std: Mean by subject and activity of fBodyGyroJerkMag.std

## Data

Variables prefixed with 't' are time domain signals. Variables prefixed with
'f' are frequency derived signals.

The magnitude of the three-dimensional signals were calculated using the
Euclidean norm; these have 'Mag' in the variable name, prior to averaging.

The original signals were normalized and bounded within [-1,1].

## Transformations

The data is the average by subject and activity of the mean and standard
deviation of the features in the original Samsung data set. There is some minor
cleanup to the variable names.
