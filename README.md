# Getting and Cleaning Data Course Project

## Overview

The project produces a tidy data set illustrating the mean of human activity recognition measurements from a Samsung smart phone. The raw data taken as input includes mean and std deviation for numerous phone gyroscopic and accelerometer measurements. These measurements are grouped by activity type and test subject and then averaged.

## Codebook

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
