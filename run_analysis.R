#Step 0. Prepararing library needed and getting the files

  #Calling dplyr library
  library("dplyr")

  #Download the data
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,"./web_computing_data_set.zip")
  #Unziping
  unzip("./web_computing_data_set.zip")
  
  #Reading features and activity labels data
  features <- read.table("./UCI HAR Dataset/features.txt")
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  
  #Reading train data
  training_set <- read.table("./UCI HAR Dataset/train/X_train.txt",col.names = features$V2)
  training_labels <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names="code")
  training_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="subject")
  
  #Reading test data
  test_set <- read.table("./UCI HAR Dataset/test/X_test.txt",col.names = features$V2)
  test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "code")
  test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="subject")

# Step 1. Merges the training and the test sets to create one data set

  #Combining by sections
  data_sets <- rbind(training_set,test_set)
  data_labels <- rbind(training_labels,test_labels)
  data_subjects <- rbind(training_subject,test_subject)
  #Combining all data
  data <- cbind(data_subjects,data_labels,data_sets)

# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement

  data_filtered <- select(data,subject, code, contains("mean"), contains("std"))
  
# Step 3. Uses descriptive activity names to name the activities in the data set
  
  data_filtered$code <- activity_labels[data_filtered$code, 2]

# Step 4. Appropriately labels the data set with descriptive variable names
  
  names(data_filtered)[2] = "activity"
  names(data_filtered) <- gsub("^t", "Time", names(data_filtered))
  names(data_filtered) <- gsub("^f", "Frequency", names(data_filtered))
  names(data_filtered) <- gsub("Acc", "Accelerometer", names(data_filtered))
  names(data_filtered) <- gsub("Gyro", "Gyroscope", names(data_filtered))
  names(data_filtered) <- gsub("BodyBody", "Body", names(data_filtered))
  names(data_filtered) <- gsub("Mag", "Magnitude", names(data_filtered))
  names(data_filtered) <- gsub("angle", "Angle", names(data_filtered))
  names(data_filtered) <- gsub("gravity", "Gravity", names(data_filtered))
  names(data_filtered) <- gsub("..","",names(data_filtered),fixed = TRUE)
  
# Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
  
  #Generating variables' average by group
  tidy_data <-
    data_filtered %>% 
      group_by(subject,activity) %>% 
        summarise_all(funs(mean))
  
  #Creating the independent tidy data set file 
  write.table(tidy_data,"tidy_data.txt",row.names = FALSE)
  