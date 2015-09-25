# run_analysis.R
setwd("~/Projects/GettingAndCleaningData/")

# the raw data is stored in a "data" subdir of the working directory
# get the training and test feature data and combine (append test to training) 
train_data = read.table("data/UCI HAR Dataset/train/X_train.txt")
test_data = read.table("data/UCI HAR Dataset/test/X_test.txt")
all_data = rbind(train_data, test_data)

# get the feature column labels
features = read.table("data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
colnames(features) <- c("column","feature") 

# extract the features labels that contain the mean and std of a feature
mean_std_cols = subset(features,grepl("-mean\\(\\)|-std\\(\\)",feature))

# subset the feature data to only include mean and std features
all_mean_std_data = all_data[,mean_std_cols[,1]]

# name the columns of the subset using the feature names
names(all_mean_std_data) <- mean_std_cols$feature

# get the training and test activities, combine (append test to training) and label
train_activities = read.table("data/UCI HAR Dataset/train/y_train.txt")
test_activities = read.table("data/UCI HAR Dataset/test/y_test.txt")
all_activities = rbind(train_activities, test_activities)
names(all_activities) <- c("activity_id")

# get the activity labels
activity_labels = read.table("data//UCI HAR Dataset//activity_labels.txt")
names(activity_labels) <- c("activity_id", "activity")

# merge the activities with the activity labels
full_activities <- merge(all_activities, activity_labels, by="activity_id")

# add the full activity names to the feature data
all_mean_std_data$activity <- full_activities$activity

# get the training and test subject data, combine (append test to training) and label
train_subjects = read.table("data/UCI HAR Dataset/train/subject_train.txt")
test_subjects = read.table("data/UCI HAR Dataset/test/subject_test.txt")
all_subjects = rbind(train_subjects, test_subjects)
names(all_subjects) <- c("subject_id")

# add the subject ids to the feature data
all_mean_std_data$subject_id <- all_subjects$subject_id

# group the feature data by activity and subject_id
activity_subject <- group_by(all_mean_std_data, activity, subject_id)

# summarize all the grouped measurements using the mean function
mean_of_grouped_measurements <- summarise_each(activity_subject, funs(mean))

# write out the summarized tidy data set
write.table(mean_of_grouped_measurements, file="mean_of_grouped_measurements.txt", row.name=FALSE)


