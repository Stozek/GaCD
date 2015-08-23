# Getting and Cleanining Data Course Project
This repository contains three files:
* README.md
* run_analysis.R
* CodeBook.md

### README.md

The file you're reading right now explaining how everything works.

### run_analysis.R

R script which (when logged into R) creates run_analysis function. It takes no arguments and assumes you have Samsung data stored in folder named "UCI HAR Dataset" in your working directory.
To summarize how it works:
* it loads dplyr library
* takes data from X_test.txt, X_train.txt, y_test.txt, y_train.txt, subject_test.txt and subject_train.txt,
* merges them accordingly (row-wise) into X, y and subject tables,
* merges these three into one dataset (column-wise),
* using the data from features.txt it connects columns with their respective measurments and selects only these on the mean and standard deviation of each,
* using the data from activity_labels.txt it changes the values of activity ("y") column from numbers to activities' names,
* gives the varibles (columns) more descriptive and readable names (more on that in CodeBook.md),
* groups the dataset by activity and subject (in that order) and summarize rest of the variables (measurments) by taking their mean,
* sends the result into new Data data frame.

### CodeBook.md
Text file containing information explaining what the variables in resulting dataset are and explanation on their name changing from the source data.