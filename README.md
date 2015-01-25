#Readme for run_analysis.R

The script generates the tidy dataset described in CodeBook.md.

## Usage
```
Rscript run_analysis.R
```
The file getdata-projectfiles-UCI HAR Dataset.zip must be in the same folder. The script extracts the file in a folder, and saves its output to file run_analysis.R in the script folder. Output file is created with write.table, and it can be loaded into R with read.table.

## Process
The steps followed to obtain the final dataset are:

1. Train (train/X_train.txt) and test (test/X_test.txt) data are joined.
1. Columns in the data are labelled using the features.txt file.
1. Train (train/y_train.txt) and test (test/y_test.txt) activities are joined, and added to the dataset.
1. Train (train/subject_train.txt) and test (test/subject_test.txt) subjects are joined, and added to the dataset.
1. Only data columns that contain the mean and the standard deviation are kept into the dataset, all other data columns are removed. Mean and standard deviation columns are those that contain *mean()* and *std()* in the name. Columns with *meanFreq* are not the average of the measured magnitude, and are thus removed.
1. Descriptive names for the activities are added to the dataset, and the column with the numerical value for the activity is removed.
1. A dataset is created with the average of each variable for each activity and each subject.

## Dependencies
dplyr package has to be installed.
