#
# - Getting and Cleaning Data - peer reviewed assesment
#   
# - Data: Human Activity Recognition Using Smartphones Data
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
#  



require(dplyr)
require(data.table)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - Step 1. Read data to memory
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

file <- "data.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_path <- "UCI HAR Dataset"
setwd("H:/getting_and_cleaning_data")


# - checks if file is downloaded and downloads it
if(!file.exists(file)){   
    download.file(url,file)
}

# - checks if file is unzipped and unzips it
if(!file.exists(data_path)){
    unzip(file)
}

# - lfeature list
features <- read.table(file.path(data_path,"features.txt"))

# - activity labels
activity_labels <- read.table(file.path(data_path,"activity_labels.txt"))

# - training labels
train_labels <- read.table(file.path(data_path,"train","y_train.txt"))
# - training subjects
train_subjects <- read.table(file.path(data_path,"train","subject_train.txt"))
# - training set
train_set <- read.table(file.path(data_path,"train","X_train.txt"))

# - test labels
test_labels <- read.table(file.path(data_path,"test","y_test.txt"))
# - test: subjects
test_subjects <- read.table(file.path(data_path,"test","subject_test.txt"))
# - test set
test_set <- read.table(file.path(data_path,"test","X_test.txt"))

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Step 2. Merge the training and the test sets to create one data set
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - Concatenate the data tables by rows
data_subject <- rbind(train_subjects, test_subjects)
data_activity<- rbind(train_labels, test_labels) # change these stupid varaible neames
data_features<- rbind(train_set, test_set)

# set names to variables

names(data_subject)<-c("subject")    
names(data_activity)<- c("activity_key")
names(data_features)<- features$V2
names(activity_labels) <- c("key","activity")

# - merge the columns

data_combine <- cbind(data_subject, data_activity)
untidy_data <- cbind(data_features, data_combine)
untidy_data <- merge(untidy_data,activity_labels, by.x = 'activity_key', by.y = 'key')

# - Subsetting the feature list for mean and standard deviations

subdata_features_names<-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
selected_names<-c(as.character(subdata_features_names), "subject", "activity" )
untidy_data<-subset(untidy_data,select=selected_names)


# - giving the data some more descriptive names

names(untidy_data)<-gsub("^t", "time", names(untidy_data))
names(untidy_data)<-gsub("^f", "frequency", names(untidy_data))
names(untidy_data)<-gsub("Acc", "Accelerometer", names(untidy_data))
names(untidy_data)<-gsub("Gyro", "Gyroscope", names(untidy_data))
names(untidy_data)<-gsub("Mag", "Magnitude", names(untidy_data))
names(untidy_data)<-gsub("BodyBody", "Body", names(untidy_data))


# - Creating the independent and "tidy" dataset

tidy_data <- untidy_data %>%
    dplyr::group_by(activity, subject) %>%
    dplyr::summarise_each(funs(mean)) %>%
    dplyr::arrange(activity, subject)

# - write the output table

write.table(tidy_data, file = "tidydata.txt",row.name=FALSE)
