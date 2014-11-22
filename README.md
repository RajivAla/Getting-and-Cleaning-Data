Getting-and-Cleaning-Data
=========================

 Analysis Process

Download the script run_analysis.R to your working directory
Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  to your working directory and unzip it. 

You should see the following data files. 

 README.txt,
 
  activity_labels.txt , 
  features.txt ,
  features_info.txt ,
  
  test(folder) ->
    subject_test.txt ,
    X_Test.txt ,
    Y_Test.txt 
    
  train (folder)->
    X_Train.txt ,
    Y_Train.txt ,
    subject_train.txt

Dependencies

Library(plyr)
Library(reshape2)

Analysis

Source the script run_analysis.R in R: source("run_analysis.R")

The Script 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Generates the final tidy data set called "tidy_data.txt"

Codebook

Information about the datasets is provided in CodeBook.md.

Citation for Data Source:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
