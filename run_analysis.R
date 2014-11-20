library(plyr)
setwd("C:/cousera/data")
download.data = function() {
  "Checks for data directory and creates one if it doesn't exist"
  if (!file.exists("data")) {
    message("Creating data directory")
    dir.create("data")
  }
  if (!file.exists("data/UCI HAR Dataset")) {
    # download the data
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    zipfile="data/UCI_HAR_data.zip"
    message("Downloading data")
    download.file(fileURL, destfile=zipfile)
    unzip(zipfile, exdir="data")
  }
}
merge.datasets = function() {
  "Merge training and test data"

  message("reading X_train.txt")
  training.x <- read.table("data/UCI HAR Dataset/train/X_train.txt")
  message("reading y_train.txt")
  training.y <- read.table("data/UCI HAR Dataset/train/y_train.txt")
  message("reading subject_train.txt")
  training.subject <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
  message("reading X_test.txt")
  test.x <- read.table("data/UCI HAR Dataset/test/X_test.txt")
  message("reading y_test.txt")
  test.y <- read.table("data/UCI HAR Dataset/test/y_test.txt")
  message("reading subject_test.txt")
  test.subject <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
  # Merging  x an y data
  merged.x <- rbind(training.x, test.x)
  merged.y <- rbind(training.y, test.y)
  merged.subject <- rbind(training.subject, test.subject)
  # merge train and test datasets and return a list
  list(x=merged.x, y=merged.y, subject=merged.subject)
}

calculate.mean_and_std = function(df) {
  # For the dataset (x values), extract only the measurements on the mean
  # and standard deviation for each measurement.
  # Read the feature list file
  features <- read.table("data/UCI HAR Dataset/features.txt")
  features
  # Find the mean and std columns
  mean.col <- sapply(features[,2], function(x) grepl("mean()", x, fixed=T))
  std.col <- sapply(features[,2], function(x) grepl("std()", x, fixed=T))
  # Extract them from the data
  edf <- df[, (mean.col | std.col)]
  colnames(edf) <- features[(mean.col | std.col), 2]
  edf
}

name.activities = function(df) {
  # Use descriptive activity names to name the activities in the dataset
  colnames(df) <- "activity"
  df$activity[df$activity == 1] = "WALKING"
  df$activity[df$activity == 2] = "WALKING_UPSTAIRS"
  df$activity[df$activity == 3] = "WALKING_DOWNSTAIRS"
  df$activity[df$activity == 4] = "SITTING"
  df$activity[df$activity == 5] = "STANDING"
  df$activity[df$activity == 6] = "LAYING"
  df
}

mergemean.data <- function(x, y, subjects) {
  # Combine mean-std values (x), activities (y) and subjects into one data
  # frame.
  cbind(x, y, subjects)
}
create.tidy_dataset = function(df) {
  # Given X values, y values and subjects, create an independent tidy dataset
  # with the average of each variable for each activity and each subject.
  tidy <- ddply(df, .(subject, activity), function(x) colMeans(x[,1:60]))
  tidy
}
## step 0
download.data()

## step 1
merged <- merge.datasets()
View(merged)
head (merged)
# step 2
cx <- calculate.mean_and_std(merged$x)
head(cx)

##step 3
cy <- name.activities(merged$y)
head(cy)
colnames(merged$subject) <- c("subject")

combined <- mergemean.data(cx, cy, merged$subject)
combined
View(combined)
# Create tidy dataset
tidy <- create.tidy_dataset(combined)
tidy
View(tidy)
write.csv(tidy, "UCI_tidy.csv", row.names=FALSE)
