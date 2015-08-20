run_analysis = function(){
  library(dplyr)
  library(tidyr)
  
  ## Loading data.
  dir = "~/UCI HAR Dataset"
  X_test = read.table((paste(dir, "/test/X_test.txt", sep = "")))
  X_train = read.table((paste(dir, "/train/X_train.txt", sep = "")))
  y_test = read.table((paste(dir, "/test/y_test.txt", sep = "")))
  y_train = read.table((paste(dir, "/train/y_train.txt", sep = "")))
  subject_test = read.table((paste(dir, "/test/subject_test.txt", sep = "")))
  subject_train = read.table((paste(dir, "/train/subject_train.txt", sep = "")))
  features = read.table(paste(dir, "/features.txt", sep = ""), colClasses = c("integer", "character"))
  activity_labels = read.table(paste(dir, "/activity_labels.txt", sep = ""), stringsAsFactors = FALSE)
  
  ## Binding sets.
  X = rbind(X_test, X_train)
  rm(X_train)
  rm(X_test)
  
  y = rbind(y_test, y_train)
  rm(y_test)
  rm(y_train)
  colnames(y) = "activity"
  
  subject = rbind(subject_test, subject_train)
  rm(subject_test)
  rm(subject_train)
  colnames(subject) = "subject"
  
  dataset = cbind(X, y, subject)
  rm(X)
  rm(y)
  rm(subject)
  
  ## Choosing only columns we need.
  our_features = features[grepl("mean()", features[,2]) | grepl("std()", features[,2]),]
  dataset = tbl_df(dataset)
  dataset = select(dataset, our_features[, 1], 562, 563)
  colnames(dataset) = c(as.character(our_features[, 2]), "activity", "subject")
  dataset = select(dataset, -contains("Freq"))
  
  ## Changing activity values.
  helpfun = function(v) {
    for (i in 1:6) {
      if (v == i) {
        return(activity_labels[[i, 2]])
      }
    }
  }
  
  ## Changing values' names. 
  dataset$activity = Vectorize(helpfun)(dataset$activity)
  colnames(dataset) = gsub("\\(\\)", "", colnames(dataset))
  colnames(dataset) = gsub("-", "_", colnames(dataset))
  colnames(dataset) = gsub("Acc", "Accelerometer", colnames(dataset))
  colnames(dataset) = gsub("Gyro", "Gyroscope", colnames(dataset))
  colnames(dataset) = gsub("Mag", "Magnitude", colnames(dataset))
  colnames(dataset) = gsub("BodyBody", "Body", colnames(dataset))
  
  ## Creating the dataset we were craving for.
  Data = group_by(dataset, activity, subject)
  Data = summarise_each(Data, "mean")
}