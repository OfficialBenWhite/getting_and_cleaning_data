# Data Code Book
To describe the data tidying process, the data source and the variables

##### Original Data Set

- UCI Human Activity Recognition Using Smartphones Data Set:

- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

- This data included a test and train set of data, a list of features, a list of activities, and a subject list.

##### Transformations applied to data set

- Joined training/test labels, training/test subject ids, and training/test feature set data together.
- Joined the labels and features with the data set
- Mapped the activity key to the actual descriptive value.
- data was grouped by activity and subject id and reports the average feature value

##### Variable Descriptions

- The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

- The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

- These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- Again, only the mean and standard deviations of these features were extracted for the tidy data set.

## Variable information

- activity: (factor) walking, walking_upstairs, walking_downstairs, sitting, standing, laying
- subject: (factor) subject who performed the activity for each window sample. Its range is from 1 to 30.
- timeBodyAcc_mean_X: (numeric)
- timeBodyAcc_mean_Y: (numeric)
- timeBodyAcc_mean_Z: (numeric)
- timeBodyAcc_std_X: (numeric)
- timeBodyAcc_std_Y: (numeric)
- timeBodyAcc_std_Z: (numeric)
- timeGravityAcc_mean_X: (numeric)
- timeGravityAcc_mean_Y: (numeric)
- timeGravityAcc_mean_Z: (numeric)
- timeGravityAcc_std_X: (numeric)
- timeGravityAcc_std_Y: (numeric)
- timeGravityAcc_std_Z: (numeric)
- timeBodyAccJerk_mean_X: (numeric)
- timeBodyAccJerk_mean_Y: (numeric)
- timeBodyAccJerk_mean_Z: (numeric)
- timeBodyAccJerk_std_X: (numeric)
- timeBodyAccJerk_std_Y: (numeric)
- timeBodyAccJerk_std_Z: (numeric)
- timeBodyGyro_mean_X: (numeric)
- timeBodyGyro_mean_Y: (numeric)
- timeBodyGyro_mean_Z: (numeric)
- timeBodyGyro_std_X: (numeric)
- timeBodyGyro_std_Y: (numeric)
- timeBodyGyro_std_Z: (numeric)
- timeBodyGyroJerk_mean_X: (numeric)
- timeBodyGyroJerk_mean_Y: (numeric)
- timeBodyGyroJerk_mean_Z: (numeric)
- timeBodyGyroJerk_std_X: (numeric)
- timeBodyGyroJerk_std_Y: (numeric)
- timeBodyGyroJerk_std_Z: (numeric)
- timeBodyAccMag_mean: (numeric)
- timeBodyAccMag_std: (numeric)
- timeGravityAccMag_mean: (numeric)
- timeGravityAccMag_std: (numeric)
- timeBodyAccJerkMag_mean: (numeric)
- timeBodyAccJerkMag_std: (numeric)
- timeBodyGyroMag_mean: (numeric)
- timeBodyGyroMag_std: (numeric)
- timeBodyGyroJerkMag_mean: (numeric)
- timeBodyGyroJerkMag_std: (numeric)
- frequencyBodyAcc_mean_X: (numeric)
- frequencyBodyAcc_mean_Y: (numeric)
- frequencyBodyAcc_mean_Z: (numeric)
- frequencyBodyAcc_std_X: (numeric)
- frequencyBodyAcc_std_Y: (numeric)
- frequencyBodyAcc_std_Z: (numeric)
- frequencyBodyAccJerk_mean_X: (numeric)
- frequencyBodyAccJerk_mean_Y: (numeric)
- frequencyBodyAccJerk_mean_Z: (numeric)
- frequencyBodyAccJerk_std_X: (numeric)
- frequencyBodyAccJerk_std_Y: (numeric)
- frequencyBodyAccJerk_std_Z: (numeric)
- frequencyBodyGyro_mean_X: (numeric)
- frequencyBodyGyro_mean_Y: (numeric)
- frequencyBodyGyro_mean_Z: (numeric)
- frequencyBodyGyro_std_X: (numeric)
- frequencyBodyGyro_std_Y: (numeric)
- frequencyBodyGyro_std_Z: (numeric)
- frequencyBodyAccMag_mean: (numeric)
- frequencyBodyAccMag_std: (numeric)
- frequencyBodyBodyAccJerkMag_mean: (numeric)
- frequencyBodyBodyAccJerkMag_std: (numeric)
- frequencyBodyBodyGyroMag_mean: (numeric)
- frequencyBodyBodyGyroMag_std: (numeric)
- frequencyBodyBodyGyroJerkMag_mean: (numeric)
- frequencyBodyBodyGyroJerkMag_std: (numeric)

