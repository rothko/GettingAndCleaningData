# Getting and Cleaning Data Course Project

## Overview

The project produces a tidy data set illustrating the mean of human activity recognition measurements from a Samsung smart phone. The raw data taken as input includes mean and std deviation for numerous phone gyroscopic and accelerometer measurements. These measurements are grouped by activity type and test subject and then averaged.

## Codebook

__Feature Selection__

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

__Feature Estimates__

The set of variables that were estimated from these signals are:

* mean(): Mean value
* std(): Standard deviation

__Feature Estimate Averages by Group__

Finally the mean() and std() estimates where averaged for each available combination of activity and subject id.

* __activity__: the activity label for the current measurement
* __subject_id__: the subject of the current measurement
* __remaining fields__: the mean of the specified raw measurement for the current activity and subject id

## Steps

1. Get the training and test feature data and combine (append test to training). The raw data is stored in a "data" subdir of the working directory
2. Get the feature column labels
3. Extract the features labels that contain the mean and std of each feature
4. Subset the feature data to only include mean and std features
5. Name the columns of the subset using the feature names
6. Get the training and test activities, combine (append test to training) and label
7. Get the activity labels
8. Merge the activities with the activity labels
9. Add the full activity names to the feature data
10. Get the training and test subject data, combine (append test to training) and label
11. Add the subject ids to the feature data
12. Group the feature data by activity and subject_id
13. Summarize all the grouped measurements using the mean function
14. Write out the summarized tidy data set

## Resources

Raw data description:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

Raw data download:
* http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
