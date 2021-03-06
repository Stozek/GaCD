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

activity<br>
One of  the six:
* "LAYING",
* "SITTING",
* "STANDING",
* "WALKING",
* "WALKING_DOWNSTAIRS",
* "WALKING_UPSTAIRs".

It indicates what activity the subject was performing while measured.

subject<br>
Number between 1 and 30 describng which participant was present during particular measurments.


### Changes and transformations of the original variables

Only the measurments on the mean and standard deviation were selected (which is denoted by "_mean" and "_std" after variable name but before possible axis statement),
then we've taken their mean by diffent activities and subjects. Furthermore (in order to improve readability) "Acc", "Gyro" and "Mag" parts of the names were substituted
by "Accelorometer", "Gyroscope" and "Magnitude" respectively. Dashes were replaced by underscores and typos ("BodyBody" appearing in some names instead of "Body") were fixed.


### Complete list of variables

acvtivity<br>
subject<br>
tBodyAccelerometer_mean_XYZ<br>
tBodyAccelerometer_std_XYZ<br>
tGravityAccelerometer_mean_XYZ<br>
tGravityAccelerometer_std_XYZ<br>
tBodyAccelerometerJerk_mean_XYZ<br>
tBodyAccelerometerJerk_std_XYZ<br>
tBodyGyroscope_mean_XYZ<br>
tBodyGyroscope_std_XYZ<br>
tBodyGyroscopeJerk_mean_XYZ<br>
tBodyGyroscopeJerk_std_XYZ<br>
tBodyAccelerometerMagnitude_mean<br>
tBodyAccelerometerMagnitude_std<br>
tGravityAccelerometerMagnitude_mean<br>
tGravityAccelerometerMagnitude_std<br>
tBodyAccelerometerJerkMagnitude_mean<br>
tBodyAccelerometerJerkMagnitude_std<br>
tBodyGyroscopeMagnitude_mean<br>
tBodyGyroscopeMagnitude_std<br>
tBodyGyroscopeJerkMagnitude_mean<br>
tBodyGyroscopeJerkMagnitude_std<br>
fBodyAccelerometer_mean_XYZ<br>
fBodyAccelerometer_std_XYZ<br>
fBodyAccelerometerJerk_mean_XYZ<br>
fBodyAccelerometerJerk_std_XYZ<br>
fBodyGyroscope_mean_XYZ<br>
fBodyGyroscope_std_XYZ<br>
fBodyAccelerometerMagnitude_mean<br>
fBodyAccelerometerMagnitude_std<br>
fBodyAccelerometerJerkMagnitude_mean<br>
fBodyAccelerometerJerkMagnitude_std<br>
fBodyGyroscopeMagnitude_mean<br>
fBodyGyroscopeMagnitude_std<br>
fBodyGyroscopeJerkMagnitude_mean<br>
fBodyGyroscopeJerkMagnitude_std<br>

'_XYZ' denotes variable having measures on 3 directions.