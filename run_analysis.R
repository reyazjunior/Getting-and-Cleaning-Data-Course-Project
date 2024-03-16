# Step 1: Download and unzip the data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "data.zip")
unzip("data.zip")

# Step 2: Read the relevant files
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_index", "activity_name"))

# Function to clean variable names
clean_variable_names <- function(x) {
  x <- gsub("\\()", "", x)
  x <- gsub("-", "_", x)
  x <- gsub("^t", "time_", x)
  x <- gsub("^f", "frequency_", x)
  x <- gsub("Acc", "_acceleration_", x)
  x <- gsub("Gyro", "_angular_velocity_", x)
  x <- gsub("Mag", "_magnitude_", x)
  x <- gsub("BodyBody", "Body", x)
  tolower(x)
}

# Step 3: Load training data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity_index")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

# Step 4: Load testing data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity_index")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# Step 5: Merge the training and testing sets
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Step 6: Extract only the measurements on the mean and standard deviation
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features$feature)
X <- X[, mean_std_indices]
colnames(X) <- features$feature[mean_std_indices]

# Step 7: Use descriptive activity names
y$activity_name <- activity_labels$activity_name[y$activity_index]

# Step 8: Label the dataset with descriptive variable names
colnames(X) <- clean_variable_names(colnames(X))

# Step 9: Create a tidy dataset with the average of each variable for each activity and each subject
library(dplyr)
tidy_data <- X %>%
  bind_cols(subject) %>%
  bind_cols(y) %>%
  group_by(subject, activity_name) %>%
  summarise_all(mean)

# Write tidy dataset to file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)