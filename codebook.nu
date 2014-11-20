


1 Subject


The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 



2 Orginal Soucse


The Orginal datasource come from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 




3 assignment

   1) Merges the training and the test sets to create one data 
      set.
   2) Extracts only the measurements on the mean and standard 
       deviation for each measurement. 
   3  Uses descriptive activity names to name the activities in 
      the data set
   4   Appropriately labels the data set with descriptive 
      variable names. 

    5 From the data set in step 4, creates a second, independent 
      tidy data set with the average of each variable for each 
      activity and each subject.


4 Solution

   I have used funtions to  dived the  solution in  steps

     a) download.data  witch download the data.
     b) merged.data    witch merge the dataset.
     c) calculate.mean_and_std which  calculates the mean and   
       std.
     d) name.activities to name the activitees in the dataset.
     e)  mergemean.data  which means the  mean data se
    f)  create.tidy_dataset which create the tidy_dataset
 


4.2  Datasets

a) merged  contains the merged row data there 10299 observations
   and 563 variables
b) comined contains all the mean data 10299 obervations and 68 
   variables .This data contrains mre observations per activity.



4.3  Variables in final dataset

This  data contains   a tiny data set

a) each varible froms a column
b) each observation froms a row
c) each table file stores observation about one kind of obsevation.
 The are 62 varibales and 180 observations  in the final dataset tidy

subject",
"activity",
"tBodyAcc-mean()-X",
"tBodyAcc-mean()-Y",
"tBodyAcc-mean()-Z",
"tBodyAcc-std()-X",
"tBodyAcc-std()-Y",
"tBodyAcc-std()-Z",
"tGravityAcc-mean()-X",
"tGravityAcc-mean()-Y",
"tGravityAcc-mean()-Z",
"tGravityAcc-std()-X",
"tGravityAcc-std()-Y",
"tGravityAcc-std()-Z",
"tBodyAccJerk-mean()-X",
"tBodyAccJerk-mean()-Y",
"tBodyAccJerk-mean()-Z",
"tBodyAccJerk-std()-X",
"tBodyAccJerk-std()-Y",
"tBodyAccJerk-std()-Z",
"tBodyGyro-mean()-X",
"tBodyGyro-mean()-Y",
"tBodyGyro-mean()-Z",
"tBodyGyro-std()-X",
"tBodyGyro-std()-Y",
"tBodyGyro-std()-Z",
"tBodyGyroJerk-mean()-X",
"tBodyGyroJerk-mean()-Y",
"tBodyGyroJerk-mean()-Z",
"tBodyGyroJerk-std()-X",
"tBodyGyroJerk-std()-Y",
"tBodyGyroJerk-std()-Z",
"tBodyAccMag-mean()",
"tBodyAccMag-std()",
"tGravityAccMag-mean()",
"tGravityAccMag-std()",
"tBodyAccJerkMag-mean()",
"tBodyAccJerkMag-std()"
,"tBodyGyroMag-mean()",
"tBodyGyroMag-std()",
"tBodyGyroJerkMag-mean()",
"tBodyGyroJerkMag-std()",
"fBodyAcc-mean()-X",
"fBodyAcc-mean()-Y",
"fBodyAcc-mean()-Z",
"fBodyAcc-std()-X",
"fBodyAcc-std()-Y",
"fBodyAcc-std()-Z",
"fBodyAccJerk-mean()-X",
"fBodyAccJerk-mean()-Y",
"fBodyAccJerk-mean()-Z",
"fBodyAccJerk-std()-X",
"fBodyAccJerk-std()-Y",
"fBodyAccJerk-std()-Z",
"fBodyGyro-mean()-X",
"fBodyGyro-mean()-Y",
"fBodyGyro-mean()-Z",
"fBodyGyro-std()-X",
"fBodyGyro-std()-Y",
"fBodyGyro-std()-Z",
"fBodyAccMag-mean()",
"fBodyAccMag-std()"


 

