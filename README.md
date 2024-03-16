# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project
Human Activity Recognition Using Smartphones Dataset Analysis
This repository contains an R script (run_analysis.R) that downloads, cleans, and analyzes the Human Activity Recognition Using Smartphones dataset. This dataset was collected from the accelerometers of Samsung Galaxy S smartphones and contains various measurements related to human activities.

Dataset Description
The dataset includes the following files:

README.txt: Description of the dataset.
features_info.txt: Information about the variables used in the feature vector.
features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
train/X_train.txt: Training set.
train/y_train.txt: Training labels.
test/X_test.txt: Test set.
test/y_test.txt: Test labels.
Additionally, the following files are available for both the train and test data:

subject_train.txt: Identifies the subject who performed the activity for each window sample.
Inertial Signals/total_acc_x_train.txt: Acceleration signal from the smartphone accelerometer X axis.
Inertial Signals/body_acc_x_train.txt: Body acceleration signal obtained by subtracting the gravity from the total acceleration.
Inertial Signals/body_gyro_x_train.txt: Angular velocity vector measured by the gyroscope for each window sample.
Script Description
The run_analysis.R script performs the following tasks:

Downloads and unzips the dataset from the provided link.
Reads the relevant files including features, activity labels, training and testing data, and subject information.
Merges the training and testing sets to create one dataset.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the dataset.
Labels the dataset with descriptive variable names.
Creates a second, independent tidy dataset with the average of each variable for each activity and each subject.
Usage
To run the analysis:

Download or clone this repository.
Make sure you have R installed on your system.
Execute the run_analysis.R script in your R environment.
The tidy dataset will be saved as tidy_data.txt in your working directory.

Dependencies
This script depends on the following R packages:

dplyr: For data manipulation and summarization.
You can install these packages using the install.packages() function if you haven't already installed them.

R
install.packages("dplyr")

License
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Author
This script was written by Danyal Reyaz.
