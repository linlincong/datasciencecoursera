#CodeBook
###SubjectID : 
numeric, record the unique subject ID for each subject
###Activity : 
character, descript the different activity types for each subject. Totall have 6 kinds of activity types


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

"_mean_" and "_std_" indicates the mean value and standard deiviation value for each measurements.
"Meanof" indicates the average of the mean value and standard deviation of that measurements for each subject and each type of activity.

The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
he acceleration signal from the smartphone accelerometer XYZ axis in standard gravity units 'g'. 

###Meanof_tBodyAcc-XYZ :
###Meanof_tGravityAcc_mean_XYZ
###Meanof_tGravityAcc_std_XYZ
###Meanof_tBodyAccJerk_mean_XYZ
###Meanof_tBodyAccJerk_std_XYZ
###Meanof_tBodyGyro_mean_XYZ
###Meanof_tBodyGyro_std_XYZ
###Meanof_tBodyGyroJerk_mean_XYZ
###Meanof_tBodyGyroJerk_std_XYZ
###Meanof_tBodyAccMag_mean
###Meanof_tBodyAccMag_std
###Meanof_tGravityAccMag-_mean
###Meanof_tGravityAccMag_std
###Meanof_tBodyAccJerkMag_mean
###Meanof_tBodyAccJerkMag_std
###Meanof_tBodyGyroMag_mean
###Meanof_tBodyGyroMag_std
###Meanof_tBodyGyroJerkMag_mean
###Meanof_tBodyGyroJerkMag_std
###Meanof_fBodyAcc_mean_XYZ
###Meanof_fBodyAcc_std_XYZ
###Meanof_fBodyAccJerk_mean_XYZ
###Meanof_fBodyAccJerk_std_XYZ
###Meanof_fBodyGyro_mean_XYZ
###Meanof_fBodyGyro_std_XYZ
###Meanof_fBodyAccMag_mean
###Meanof_fBodyAccMag_std
###Meanof_fBodyAccJerkMag_mean
###Meanof_fBodyAccJerkMag_std
###Meanof_fBodyGyroMag_mean
###Meanof_fBodyGyroMag_std
###Meanof_fBodyGyroJerkMag_mean
###Meanof_fBodyGyroJerkMag_mean