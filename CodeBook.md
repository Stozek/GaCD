# Code Book
Description and explanation behind variables.


### Description of original variables usade to create my dataset

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Reference: features_info.txt, [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Every variable was normalised to fit into [-1;1] range.


### New variables

activity

	One of  the six:
	* "LAYING",
	* "SITTING",
	* "STANDING",
	* "WALKING",
	* "WALKING_DOWNSTAIRS",
	* "WALKING_UPSTAIRs".
	It indicates what activity the subject was performing while measured.

subject

	Number between 1 and 30 describng which participant was present during particular measurments.

### Changes in the original variables.

Only the measurments on the mean and standard deviation were selected (which is denoted by "_mean" and "_std" after variable name but before possible axis statement),
then we've taken their mean by diffent activities and subjects. Furthermore (in order to improve readability) "Acc", "Gyro" and "Mag" parts of the names were substituted
by "Accelorometer", "Gyroscope" and "Magnitude" respectively. Dashes were replaced by underscores. 