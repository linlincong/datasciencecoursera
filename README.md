# Final Project of Getting and Cleaning data

###Author: Linlin Cong 03/30/2016


##The repo includes the following files:
=========================================

- 'Run_anlysis.R':the R code used to read raw data in and get the final tidy dataset. Before run the R code please set the directory to the one you used to store the original data "UCI HAR Dataset" folder.
			  
- 'CodeBook.md': A codeBook that describes the variables, the data and any transformations or work that I have performed to clean up the data and get the final data.   


##The procedure in the R script:
=========================================

- The measured variable names and activity type were read in from "features.txt" and "activity_labels.txt"

- The raw data sets "subject_train.txt", "x_train.txt", "y_train.txt", were read in and combined together from training dataset and test datset, respectively. 

- the combined different dataset into one data.fram with variable subjectID, Activity,all measures variables for training dataset and test datset, respectively. 

- only exctract mean and std values from each measured variable for training dataset and test datset, respectively. 
 
- merge training and test dataset.

- group the new dataset by subject ID and activity type

- calculate the average of each variables for each activity and each subject.

- write the final tidy dataset into a txt file

