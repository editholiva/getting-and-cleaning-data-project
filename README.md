# Getting and Cleaning Data - Course Project
This repository was created for the project course of Getting and Cleaning Data which is the third course of the Data Science: Foundations Using R specialization

## Project summary
As the instruccions says, the purpose of this project is to "demonstrate your ability to collect, work with, and clean a data set". In order to achieving that, the participants have to prepare a tidy data set using for later analysis.
The data is in the context of wearable computers, specifically accelerometers from the Samsung Galaxy S smartphone. You can access the data [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

**Review criteria**

* The submitted data set is tidy.
* The Github repo contains the required scripts.
* GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
* The README that explains the analysis files is clear and understandable.
* The work submitted for this project is the work of the student who submitted it.

## Repository content

`CodeBook.md` explains the data used, describes the variables and the transformations needed to clean it up.

`run_analysis.R` is the script with the process to obtain the tidy data set. It's explained step by step

`tidy_data-txt` the final result

`README.md` the file that you're already reading at


## How does the script works

The `run_analysis.R` has the code and descriptive comments to obtain a tidy data set. 
Basically, it containts five steps, but I added a step cero to explain how to get the data. 

0. **Prepararing library needed and getting the files**. First, it loads the dplyr library that uses in a future step.
Second, downloads the data and unziping it. Then, reads each file, identifying the ones that came from test or train and also if it is a set, label o subject file. Also reads the complementary files, features and activity labels.

1. **Merges the training and the test sets to create one data set**. This is an important step because is where all the data beggings to take form. 
The first part combines by sections, that means it unify the set file from train and test, then the label file from train and test, as the same way it does with subject. 
The second part it's when everything gets unified because links the subjects, labels and set in a same file.

2. **Extracts only the measurements on the mean and standard deviation for each measurement**. Using `select()` from the `dplyr` library it filters the data according to the requirements

3. **Uses descriptive activity names to name the activities in the data set**. A quick one, takes the activity labels file and assing its values to the code variable in the unifed data we have created

4. **Appropriately labels the data set with descriptive variable names**. This is the largest step. The first part to get through it is check on he data column names and analyze what isn't easy to understand.
The point is that a variable name could be clear, so that the reader hasn't need to check the code book for to undestand it. Then when it's clear what it's necesary to improve, the function gsub gets very useful to subtitute in string objects.

5. **From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject**. The final one. Using the chain technique, it groups the data by subject and activity to then get the means of every variable in the data set and assing the result to a new frame called `tidy_data`, which is also available in the repository. 
The last lines is the one that creates the txt file. 

