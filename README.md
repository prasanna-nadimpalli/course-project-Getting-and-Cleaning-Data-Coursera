# course-project-Getting-and-Cleaning-Data-Coursera
course project

This repository contains the script and codebook as well as the resulting .txt file for the course project of "Getting and Cleaning Data" from Coursera.

# Files
- run_analysis.R contains the script to summarize the measured means and standard deviations per activity and subject. The script performs the following:  
  1. set the working directory: This should contain the original file dtructure of the .zip archive downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  2.  extract variable names from the features.txt  
  3.  read the test and training data seperately and add the variable names as well as one column for the subject and activity data each  
  4.  merge test and training data  
  5.  extract mean and standard deviation and save to new dataset ("mean_info")  
  6.  replace cryptic activity numbers by activity names  
  7.  convert activity and subject variables to factors  
  8.  make variable names nicer by removing "-" and "()"  
  9.  summarize mean and standard deviation data by activity and subject, save as new dataset ("mean_info_tidy")  
  10.  write dataset to disk ("tidyData.txt")

- Codebook.md contains a short description of the data, the data source and the links and references linking the data to the source. It additionally provides a short description of:  
  - How the data was obtained.  
  - The data preprocessing done before data clean-up.  
  - A description of the variables used as input and produced after summary (including their units).  

- TidyData.txt includes the summarized mean values and standard deviations per activity and group.

