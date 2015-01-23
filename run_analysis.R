unzip('getdata-projectfiles-UCI HAR Dataset.zip')

#Load and join data
X_test <- read.table('UCI HAR Dataset/test/X_test.txt')
X_train <- read.table('UCI HAR Dataset/train/X_train.txt')
X <- rbind(X_test, X_train)

#Add column names to data
features <- read.table('UCI HAR Dataset/features.txt', col.names = c('id', 'name'))
names(X) <- features$name

#Load and join activities
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
y <- rbind(y_test, y_train)
#Add activities to dataset
X$activity_id <- y[,1]

#Load and join subjects
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
subject <- rbind(subject_test, subject_train)
#Add subjects to dataset
X$subject <- subject[,1]

#Remove data columns other than std() and mean()
cols_to_keep <- grep('std\\(\\)|mean\\(\\)', features[,2])
cols_to_keep <- c(cols_to_keep, ncol(X)-1, ncol(X)) #Keep activities and subjects
X_mean_std <- X[, cols_to_keep]

#Add activity names
activity_labels <- read.table('UCI HAR Dataset//activity_labels.txt', col.names = c('activity_id', 'activity_name'))
X_tidy <- merge(X_mean_std, activity_labels)

#Get averaged data for each subject and activity
library(dplyr)
X_mean <- X_tidy %>% 
    select(-activity_id) %>% #Remove redundant col
    group_by(subject, activity_name) %>%
    summarise_each(funs(mean))

#Save table
write.table(X_mean, file='UCI HAR averaged.txt', row.name=FALSE)