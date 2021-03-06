##Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 


##Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


##Variable Descriptions: 

Read Test and Train data from files   -->
x_train ,
y_train ,
subject_train ,
x_test ,
y_test ,
subject_test


Merging test and train data per dimensions  --> "final_data"

Read features Data   -->  "features"

Merge x_train, y_train, subject_train to create full training set  -->  "final_data"

Extracts only the measurements on the mean and standard deviation for each measurement  --> "final_data_filtered"

Use descriptive activity names to name the activities in the data set  --> "activities"

Appropriately label the data set with descriptive activity names  --> "final_data_filtered"

Create a second, independent tidy data set with the average of each variable for each activity and each subject  --> "tidy_data"

Save the results  --> "tidy_data"
