#setwd(".../UCI HAR Dataset")

library(dplyr)

#read data
#extract column names
col<-read.table("./features.txt",header=FALSE)
col<-col[,2]
#read test data, rename columns and merge activity and subject info
test<-read.table("./test/X_test.txt",header=FALSE)
colnames(test)<-col
activity_test<-read.table("./test/y_test.txt",header=FALSE,stringsAsFactors=FALSE)
subject_test<-read.table("./test/subject_test.txt",header=FALSE)
test<-cbind(test,activity=activity_test$V1,subject=subject_test$V1)

#read training data, rename columns and merge activity and subject info
train<-read.table("./train/X_train.txt",header=FALSE)
colnames(train)<-col
activity_train<-read.table("./train/y_train.txt",header=FALSE)
subject_train<-read.table("./train/subject_train.txt",header=FALSE)
train<-cbind(train,activity=activity_train$V1,subject=subject_train$V1)

#generate one dataset from training and test data
complete<-rbind(train,test)

# extract mean and standard deviation per activity and subject
mean_columns<-grep("^(.*)(mean[^a-zA-Z])(.*)",names(complete),value=FALSE)
std_columns<-grep("^(.*)(std)(.*)",names(complete),value=FALSE)
selected<-c(mean_columns,std_columns)
selected<-sort(selected)
mean_info<-complete[,c(selected,562,563)]

#read activity names
activityNames<-read.table("./activity_labels.txt",header=FALSE,stringsAsFactors=FALSE)
for (i in 1:length(activityNames$V2)){
  mean_info$activity<-gsub(activityNames$V1[i],activityNames$V2[i],mean_info$activity)
}

#tidy data with average per individual and activity
#a) convert activity and subject variables into factors
mean_info$subject<-as.factor(mean_info$subject)
mean_info$activity<-as.factor(mean_info$activity)
#b) make variable names nicer
names(mean_info)<-gsub("-","",names(mean_info))
names(mean_info)<-gsub("()","",names(mean_info),fixed = TRUE)
#c)average all columns by subject and activity
mean_info_tidy<-mean_info %>% group_by(activity, subject, add=TRUE) %>% summarise_each(funs(mean))

write.table(mean_info_tidy,"tidyData.txt",row.name=FALSE, sep="\t") 
