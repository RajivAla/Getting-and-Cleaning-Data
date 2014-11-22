library(reshape2)

######################## 1. Merge training and test files into one data set ########################

#1a. Read Test and Train data from files.

x_train<-read.table("train/X_train.txt",header = FALSE)
y_train<-read.table("train/y_train.txt",header = FALSE)
subject_train<-read.table("train/subject_train.txt",header = FALSE)


x_test<-read.table("test/X_test.txt", header = FALSE)
y_test<-read.table("test/y_test.txt", header = FALSE)
subject_test<-read.table("test/subject_test.txt", header = FALSE)


#1b. Merging test and train data per dimensions. 
final_data <-rbind(x_test,x_train)

#1c. Read features Data
features<- read.table ("features.txt")


#1d. Assigning Column Names for the files missing headers.
features_transpose<-t(features)
colnames(final_data) <- features_transpose[2,]

#1e. Merge x_train, y_train, subject_train to create full training set
subject<- rbind(subject_test, subject_train)
colnames(subject) <- "subject"
activity<- rbind(y_test,y_train)
colnames(activity) <- "activity"
final_data<-cbind(final_data, subject,activity)

########################  2. Extracts only the measurements on the mean and standard deviation for each measurement.########################
measure_selection<-which(grepl("mean()|std()",features[,2])==TRUE)
final_data_filtered <-final_data[,c(measure_selection, 562,563)]


######################### 3. Use descriptive activity names to name the activities in the data set ########################

activities<-read.table("activity_labels.txt")
activities<-activities[,2]  

######################### 4. Appropriately label the data set with descriptive activity names. ########################

final_data_filtered[,"activity"]<-as.factor(final_data[,"activity"])
levels(final_data_filtered[,"activity"])<-levels(activities)

######################### 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. ########################
tidy_melt<-melt(final_data_filtered,id=c("subject","activity"),measure.vars=c(1:79))
tidy_data<-dcast(tidy_melt,subject+activity~variable,mean)

##Save the results
write.table(tidy_data, './tidy_data.txt',row.names=FALSE,sep='\t');
