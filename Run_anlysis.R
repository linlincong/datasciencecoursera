setwd("C:/Users/CongL_000/Dropbox/BME_file/0_2016_spring/coursera/dataScience/3cleaningdata/week4/project")

#read measured variable names
vname<-read.table("UCI HAR DATAset/features.txt")
vname<-vname$V2

#read activity names
alables<-read.table("UCI HAR DATAset/activity_labels.txt")

###################################################
#read data from traning set
tsubject<-read.table("UCI HAR DATAset/train/subject_train.txt")
tscore<-read.table("UCI HAR DATAset/train/X_train.txt")
tlabel<-read.table("UCI HAR DATAset/train/y_train.txt")

#read the descriptive active names
tlabelname<-sapply(tlabel$V1,function(x) x<-as.character(alables[x,2]))
  
# combine these data.frame into one data.frame with vaiables subjectID, activity,and measure variables1-563
train<-data.frame(SubjectID=tsubject$V1,activity=tlabelname,tscore)
names(train)<-c("sujectID","activity",as.character(vname))

#extract only the mean and std for each measurements
incid<-c(1,2,grep('mean\\(\\)',names(train)),grep("std\\(\\)",names(train)))
incid<-sort(as.numeric(incid))
train_mean_std<-train[,incid]
rm(tsubject, tscore,tlabel,tlabelname,train,incid)


#do the same thing to the test sets
tsubject<-read.table("UCI HAR DATAset/test/subject_test.txt")
tscore<-read.table("UCI HAR DATAset/test/X_test.txt")
tlabel<-read.table("UCI HAR DATAset/test/y_test.txt")

#read the descriptive active names
tlabelname<-sapply(tlabel$V1,function(x) x<-as.character(alables[x,2]))

# combine these data.frame into one data.frame with vaiables subjectID, activity,and measure variables1-563
test<-data.frame(SubjectID=tsubject$V1,activity=tlabelname,tscore)
names(test)<-c("sujectID","activity",as.character(vname))

#extract only the mean and std for each measurements
incid<-c(1,2,grep('mean\\(\\)',names(test)),grep("std\\(\\)",names(test)))
incid<-sort(as.numeric(incid))
test_mean_std<-test[,incid]

rm(tsubject, tscore,tlabel,tlabelname,test,incid)

##################################################################################
#merge training and test dataset
mergedata=merge(test_mean_std,train_mean_std,all=TRUE)

#apply the descriptive name to each variables
names=gsub("\\-","\\_",names(mergedata))
names=gsub("\\(\\)","",names)
names(mergedata)<-names

#############################################################
library(dplyr)
library(stringr)

grouped<- group_by(mergedata, sujectID,activity)
names<- paste0("MeanOf_",names(mergedata)[3:ncol(mergedata)])
summary<-data.frame(summarize_each(grouped,funs(mean)))
names(summary)[3:ncol(mergedata)]<-names

write.table(summary,"tidydata.txt",row.names = FALSE) 