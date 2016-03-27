---
title: "Codebook"
output: html_document
---

# Dataset:

Human Activity Recognition Using Smartphones Data Set
source: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ 
Please site the following reference for publications:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# Dataset Information: 

#### from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Source files: 

## Files use to create the tidy dataset

Info: 
- The preprocessed and transformed files were used.   
- Features are normalized and bounded within [-1,1].  
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).  
- The gyroscope units are rad/seg.  
- Refer to source page for original files.  

    features_info.txt: Shows information about the variables used on the feature vector.
    features.txt: List of all features.
    activity_labels.txt: Links the class labels with their activity name.
    train/X_train.txt: Training set.
    train/y_train.txt: Training labels.
    test/X_test.txt: Test set.
    test/y_test.txt: Test labels.
    train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

# Variable in tidy data

### Activity: 
  the activity name as character:
        Walking
        Walking Upstairs
        Walking Downstairs
        Sitting
        Standing
        Laying
        
### Subject: 
  the subject ID as integer.

### Measurement Means

  All variables are the mean of a measurement for each subject and activity.  
  units are:  
  - The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).  
  - The gyroscope units are rad/seg  
  t at the beginning: time domain signal  
  f at the beginning: Fast Fourier Transform (FFT) signals  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions  

    Time domain body acceleration mean along X, Y, and Z:
        tBodyAccmeanX
        tBodyAccmeanY
        tBodyAccmeanZ
    Time domain body acceleration standard deviation along X, Y, and Z:
        tBodyAccstdX
        tBodyAccstdY
        tBodyAccstdZ
    Time domain gravity acceleration mean along X, Y, and Z:
        tGravityAccmeanX
        tGravityAccmeanY
        tGravityAccmeanZ
    Time domain gravity acceleration standard deviation along X, Y, and Z:
        tGravityAccstdX
        tGravityAccstdY
        tGravityAccstdZ
    Time domain body jerk mean along X, Y, and Z:
        tBodyAccJerkmeanX
        tBodyAccJerkmeanY
        tBodyAccJerkmeanZ
    Time domain body jerk standard deviation along X, Y, and Z:
        tBodyAccJerkstdX
        tBodyAccJerkstdY
        tBodyAccJerkstdZ
    Time domain gyroscope mean along X, Y, and Z:
        tBodyGyromeanX
        tBodyGyromeanY
        tBodyGyromeanZ
    Time domain gyroscope standard deviation along X, Y, and Z:
        tBodyGyrostdX
        tBodyGyrostdY
        tBodyGyrostdZ
    Time domain gyroscope jerk mean along X, Y, and Z:
        tBodyGyroJerkmeanX
        tBodyGyroJerkmeanY
        tBodyGyroJerkmeanZ
    Time domain gyroscope jerk standard deviation along X, Y, and Z:
        tBodyGyroJerkstdX
        tBodyGyroJerkstdY
        tBodyGyroJerkstdZ
    Time domain body acceleration magnitude mean:
        tBodyAccMagmean
    Time domain body acceleration magnitude standard deviation:
        tBodyAccMagstd
    Time domain gravity acceleration magnitude mean:
        tGravityAccMagmean
    Time domain gravity acceleration magnitude standard deviation:
        tGravityAccMagstd
    Time domain body jerk magnitude mean:
        tBodyAccJerkMagmean
    Time domain body jerk magnitude standard deviation:
        tBodyAccJerkMagstd
    Time domain gyroscope magnitude mean:
        tBodyGyroMagmean
    Time domain gyroscope magnitude standard deviation:
        tBodyGyroMagstd
    Time domain gyroscope jerk magnitude mean:
        tBodyGyroJerkMagmean
    Time domain gyroscope jerk magnitude standard deviation:
        tBodyGyroJerkMagstd
    Frequency domain body acceleration mean along X, Y, and Z:
        fBodyAccmeanX
        fBodyAccmeanY
        fBodyAccmeanZ
    Frequency domain body acceleration standard deviation along X, Y, and Z:
        fBodyAccstdX
        fBodyAccstdY
        fBodyAccstdZ
    Frequency domain body jerk mean along X, Y, and Z:
        fBodyAccJerkmeanX
        fBodyAccJerkmeanY
        fBodyAccJerkmeanZ
    Frequency domain body jerk standard deviation along X, Y, and Z:
        fBodyAccJerkstdX
        fBodyAccJerkstdY
        fBodyAccJerkstdZ
    Frequency domain gyroscope mean along X, Y, and Z:
        fBodyGyromeanX
        fBodyGyromeanY
        fBodyGyromeanZ
    Frequency domain gyroscope standard deviation along X, Y, and Z:
        fBodyGyrostdX
        fBodyGyrostdY
        fBodyGyrostdZ
    Frequency domain body acceleration magnitude mean:
        fBodyAccMagmean
    Frequency domain body acceleration magnitude standard deviation:
        fBodyAccMagstd
    Frequency domain body jerk magnitude mean:
        fBodyBodyAccJerkMagmean
    Frequency domain body jerk magnitude standard deviation:
        fBodyBodyAccJerkMagstd
    Frequency domain gyroscope magnitude mean:
        fBodyBodyGyroMagmean
    Frequency domain gyroscope magnitude standard deviation:
        fBodyBodyGyroMagstd
    Frequency domain gyroscope jerk magnitude mean:
        fBodyBodyGyroJerkMagmean
    Frequency domain gyroscope jerk magnitude standard deviation:
        fBodyBodyGyroJerkMagstd
        
# Data processing

- Training and test datasets were read in and column data (variable names) extracted and merged into one dataset ("complete").  
- Activity and Subject information was added to the dataset.    
- The mean and standard deviations were extracted int new data set ("mean_info")
- The variable names were cleaned up.
- The data was grouped by activity and subject and the mean/std values summarized per group ("mean_info_tidy").
