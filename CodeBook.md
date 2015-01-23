# CodeBook for averaged subset of UCI HAR Dataset
This file describes the process to create an averaged subset of the UCI HAR Dataset 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
and the variables it contains. The dataset contains measurements obtained from
a smartphone by a number of subjects, performing several activities.

## Transformations
The original dataset is split in two sets, training and test. For each set, data is split
into 3 files: one for the data, one for the activity being performed and a third one for
the subject. The steps followed to obtain the final dataset are:
1. Train (train/X_train.txt) and test (test/X_test.txt) data are joined.
1. Columns in the data are labelled using the features.txt file.
1. Train (train/y_train.txt) and test (test/y_test.txt) activities are joined, and added to the dataset.
1. Train (train/subject_train.txt) and test (test/subject_test.txt) subjects are joined, and added to the dataset.
1. Only data columns that contain the mean and the standard deviation are kept into the dataset, all other data columns are removed. Mean and standard deviation columns are those that contain *mean()* and *std()* in the name. Columns with *meanFreq* are not the average of the measured magnitude, and are thus removed.
1. Descriptive names for the activities are added to the dataset, and the column with the numerical value for the activity is removed.
1. A dataset is created with the average of each variable for each activity and each subject.

# Variables
All variables are real numbers, except for the first two.

subject (int)

activity_name (str) 

tBodyAcc-mean()-X 

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z 

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z  

tGravityAcc-mean()-X 

tGravityAcc-mean()-Y  

tGravityAcc-mean()-Z  

tGravityAcc-std()-X 

tGravityAcc-std()-Y  

tGravityAcc-std()-Z  

tBodyAccJerk-mean()-X 

tBodyAccJerk-mean()-Y  

tBodyAccJerk-mean()-Z  

tBodyAccJerk-std()-X 

tBodyAccJerk-std()-Y  

tBodyAccJerk-std()-Z  

tBodyGyro-mean()-X 

tBodyGyro-mean()-Y  

tBodyGyro-mean()-Z  

tBodyGyro-std()-X  

tBodyGyro-std()-Y

tBodyGyro-std()-Z  

tBodyGyroJerk-mean()-X  

tBodyGyroJerk-mean()-Y 

tBodyGyroJerk-mean()-Z  

tBodyGyroJerk-std()-X  

tBodyGyroJerk-std()-Y 

tBodyGyroJerk-std()-Z  

tBodyAccMag-mean()  

tBodyAccMag-std() 

tGravityAccMag-mean()  

tGravityAccMag-std()  

tBodyAccJerkMag-mean() 

tBodyAccJerkMag-std()  

tBodyGyroMag-mean()  

tBodyGyroMag-std() 

tBodyGyroJerkMag-mean()  

tBodyGyroJerkMag-std()  

fBodyAcc-mean()-X 

fBodyAcc-mean()-Y  

fBodyAcc-mean()-Z  

fBodyAcc-std()-X  

fBodyAcc-std()-Y 

fBodyAcc-std()-Z  

fBodyAccJerk-mean()-X  

fBodyAccJerk-mean()-Y 

fBodyAccJerk-mean()-Z  

fBodyAccJerk-std()-X  

fBodyAccJerk-std()-Y 

fBodyAccJerk-std()-Z  

fBodyGyro-mean()-X  

fBodyGyro-mean()-Y 

fBodyGyro-mean()-Z  

fBodyGyro-std()-X  

fBodyGyro-std()-Y  

fBodyGyro-std()-Z

fBodyAccMag-mean()  

fBodyAccMag-std()  

fBodyBodyAccJerkMag-mean()  

fBodyBodyAccJerkMag-std()  

fBodyBodyGyroMag-mean()  

fBodyBodyGyroMag-std()  

fBodyBodyGyroJerkMag-mean()  

fBodyBodyGyroJerkMag-std() 
