#Code Book
This github markdown document is a Code Book for the Activities, Measurements taken, and the data field identifiers in the file called tidy.txt.

Results in tidy.txt were made using the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

Source and Data Set Information is below.

## subject
  ID# of each of the 30 volunteers within an age bracket of 19-48 years

##activity
  WALKING - subject was walking for these measurements  
  WALKING_UPSTAIRS - subject was climbing stairs  
  WALKING_DOWNSTAIRS - suject was walking down a staircase  
  SITTING - subject was sitting during these measurements  
  STANDING - subject was standing  
  LAYING - subject was laying down  
  
##measurements
  tBodyAccMeanX   
  tBodyAccMeanY   
  tBodyAccMeanZ   
  tBodyAccStdX   
  tBodyAccStdY   
  tBodyAccStdZ   
  tGravityAccMeanX   
  tGravityAccMeanY   
  tGravityAccMeanZ   
  tGravityAccStdX   
  tGravityAccStdY   
  tGravityAccStdZ   
  tBodyAccJerkMeanX  
  tBodyAccJerkMeanY  
  tBodyAccJerkMeanZ  
  tBodyAccJerkStdX  
  tBodyAccJerkStdY  
  tBodyAccJerkStdZ   
  tBodyGyroMeanX   
  tBodyGyroMeanY   
  tBodyGyroMeanZ   
  tBodyGyroStdX   
  tBodyGyroStdY   
  tBodyGyroStdZ   
  tBodyGyroJerkMeanX  
  tBodyGyroJerkMeanY   
  tBodyGyroJerkMeanZ   
  tBodyGyroJerkStdX   
  tBodyGyroJerkStdY   
  tBodyGyroJerkStdZ   
  tBodyAccMagMean   
  tBodyAccMagStd   
  tGravityAccMagMean   
  tGravityAccMagStd   
  tBodyAccJerkMagMean   
  tBodyAccJerkMagStd   
  tBodyGyroMagMean   
  tBodyGyroMagStd   
  tBodyGyroJerkMagMean   
  tBodyGyroJerkMagStd   
  fBodyAccMeanX   
  fBodyAccMeanY   
  fBodyAccMeanZ   
  fBodyAccStdX   
  fBodyAccStdY   
  fBodyAccStdZ   
  fBodyAccMeanFreqX   
  fBodyAccMeanFreqY   
  fBodyAccMeanFreqZ   
  fBodyAccJerkMeanX   
  fBodyAccJerkMeanY   
  fBodyAccJerkMeanZ   
  fBodyAccJerkStdX   
  fBodyAccJerkStdY   
  fBodyAccJerkStdZ   
  fBodyAccJerkMeanFreqX   
  fBodyAccJerkMeanFreqY   
  fBodyAccJerkMeanFreqZ   
  fBodyGyroMeanX   
  fBodyGyroMeanY   
  fBodyGyroMeanZ   
  fBodyGyroStdX   
  fBodyGyroStdY   
  fBodyGyroStdZ   
  BodyGyroMeanFreqX   
  fBodyGyroMeanFreqY   
  fBodyGyro  

_____________________
Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

