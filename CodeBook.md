# Code Book
This code book first presents a quick explanation to the initial data used and then presents a deeper explanaition on the `tidy_data.txt` file

## Initial data

The data was obtained from the [Human Activity Recognition Using Smartphones Dataset] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
This is a zip files that contains three princiapl sections: identifiers, train and test. According to the autors, the summary of the data is:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

This datasets includes the following files:

- `README.txt`

- `features_info.txt`: Shows information about the variables used on the feature vector.

- `features.txt`: List of all features.

- `activity_labels.txt`: Links the class labels with their activity name.

- `train/X_train.txt`: Training set.

- `train/y_train.txt`: Training labels.

- `test/X_test.txt`: Test set.

- `test/y_test.txt`: Test labels.


## Tidy data file
In order to the requirements of the project, a process of cleaning up the data has been done, which is specified in the `run_analysis.R` script. So, not all the varaible from the initial data where used. Here are explained the ones that form part from the `tidy_data.txt`.

The data 180 observationts and 88 variables. The first two are the idetifiers which were used to group the data. The rest are measurements 

### Identifiers

`subject` - ID of participant

  * interger
  
  * 1 - 30 values

`activity` - The type of activity that they were performing when the measurements were taken

  * character
  
  * 6 values
    
    * Walking
    
    * Walking Upstairs
    
    * Walking Downstairs
    
    * Sitting
    
    * Standing
    
    * Laying
   
### Measurements
Correspond to the mean o standard deviation of different features

  * numeric
  
  * 86 variables
  
    "subject"
    
    "activity"
    
    "TimeBodyAccelerometer.mean.X"
    
    "TimeBodyAccelerometer.mean.Y"
    
    "TimeBodyAccelerometer.mean.Z"
    
    "TimeGravityAccelerometer.mean.X"
    
    "TimeGravityAccelerometer.mean.Y"
    
    "TimeGravityAccelerometer.mean.Z"
    
    "TimeBodyAccelerometerJerk.mean.X"
    
    "TimeBodyAccelerometerJerk.mean.Y"
    
    "TimeBodyAccelerometerJerk.mean.Z"
    
    "TimeBodyGyroscope.mean.X"
    
    "TimeBodyGyroscope.mean.Y"
    
    "TimeBodyGyroscope.mean.Z"
    
    "TimeBodyGyroscopeJerk.mean.X"
    
    "TimeBodyGyroscopeJerk.mean.Y"
    
    "TimeBodyGyroscopeJerk.mean.Z"
    
    "TimeBodyAccelerometerMagnitude.mean"
    
    "TimeGravityAccelerometerMagnitude.mean"
    
    "TimeBodyAccelerometerJerkMagnitude.mean"
    
    "TimeBodyGyroscopeMagnitude.mean"
    
    "TimeBodyGyroscopeJerkMagnitude.mean"
    
    "FrequencyBodyAccelerometer.mean.X"
    
    "FrequencyBodyAccelerometer.mean.Y"
    
    "FrequencyBodyAccelerometer.mean.Z"
    
    "FrequencyBodyAccelerometer.meanFreq.X"
    
    "FrequencyBodyAccelerometer.meanFreq.Y"
    
    "FrequencyBodyAccelerometer.meanFreq.Z"
    
    "FrequencyBodyAccelerometerJerk.mean.X"
    
    "FrequencyBodyAccelerometerJerk.mean.Y"
    
    "FrequencyBodyAccelerometerJerk.mean.Z"
    
    "FrequencyBodyAccelerometerJerk.meanFreq.X"
    
    "FrequencyBodyAccelerometerJerk.meanFreq.Y"
    
    "FrequencyBodyAccelerometerJerk.meanFreq.Z"
    
    "FrequencyBodyGyroscope.mean.X"
    
    "FrequencyBodyGyroscope.mean.Y"
    
    "FrequencyBodyGyroscope.mean.Z"
    
    "FrequencyBodyGyroscope.meanFreq.X"
    
    "FrequencyBodyGyroscope.meanFreq.Y"
    
    "FrequencyBodyGyroscope.meanFreq.Z"
    
    "FrequencyBodyAccelerometerMagnitude.mean"
    
    "FrequencyBodyAccelerometerMagnitude.meanFreq"
    
    "FrequencyBodyAccelerometerJerkMagnitude.mean"
    
    "FrequencyBodyAccelerometerJerkMagnitude.meanFreq"
    
    "FrequencyBodyGyroscopeMagnitude.mean"
    
    "FrequencyBodyGyroscopeMagnitude.meanFreq"
    
    "FrequencyBodyGyroscopeJerkMagnitude.mean"
    
    "FrequencyBodyGyroscopeJerkMagnitude.meanFreq"
    
    "Angle.tBodyAccelerometerMean.Gravity."
    
    "Angle.tBodyAccelerometerJerkMeanGravityMean."
    
    "Angle.tBodyGyroscopeMean.GravityMean."
    
    "Angle.tBodyGyroscopeJerkMean.GravityMean."
    
    "Angle.X.GravityMean."
    
    "Angle.Y.GravityMean."
    
    "Angle.Z.GravityMean."
    
    "TimeBodyAccelerometer.std.X"
    
    "TimeBodyAccelerometer.std.Y"
    
    "TimeBodyAccelerometer.std.Z"
    
    "TimeGravityAccelerometer.std.X"
    
    "TimeGravityAccelerometer.std.Y"
    
    "TimeGravityAccelerometer.std.Z"
    
    "TimeBodyAccelerometerJerk.std.X"
    
    "TimeBodyAccelerometerJerk.std.Y"
    
    "TimeBodyAccelerometerJerk.std.Z"
    
    "TimeBodyGyroscope.std.X"
    
    "TimeBodyGyroscope.std.Y"
    
    "TimeBodyGyroscope.std.Z"
    
    "TimeBodyGyroscopeJerk.std.X"
    
    "TimeBodyGyroscopeJerk.std.Y"
    
    "TimeBodyGyroscopeJerk.std.Z"
    
    "TimeBodyAccelerometerMagnitude.std"
    
    "TimeGravityAccelerometerMagnitude.std"
    
    "TimeBodyAccelerometerJerkMagnitude.std"
    
    "TimeBodyGyroscopeMagnitude.std"
    
    "TimeBodyGyroscopeJerkMagnitude.std"
    
    "FrequencyBodyAccelerometer.std.X"
    
    "FrequencyBodyAccelerometer.std.Y"
    
    "FrequencyBodyAccelerometer.std.Z"
    
    "FrequencyBodyAccelerometerJerk.std.X"
    
    "FrequencyBodyAccelerometerJerk.std.Y"
    
    "FrequencyBodyAccelerometerJerk.std.Z"
    
    "FrequencyBodyGyroscope.std.X"
    
    "FrequencyBodyGyroscope.std.Y"
    
    "FrequencyBodyGyroscope.std.Z"
    
    "FrequencyBodyAccelerometerMagnitude.std"
    
    "FrequencyBodyAccelerometerJerkMagnitude.std"
    
    "FrequencyBodyGyroscopeMagnitude.std"
    
    "FrequencyBodyGyroscopeJerkMagnitude.std"

  
