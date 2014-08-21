### Reading Test data & Applying row name
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
row.names(x_test)<-c(7401:10347)
y_test<-read.table("UCI HAR Dataset/test/Y_test.txt")
row.names(y_test)<-c(7401:10347)
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
row.names(subject_test)<-c(7401:10347)
bacc_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
row.names(bacc_x_test)<-c(7401:10347)
bacc_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
row.names(bacc_y_test)<-c(7401:10347)
bacc_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
row.names(bacc_z_test)<-c(7401:10347)
bgyro_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
row.names(bgyro_x_test)<-c(7401:10347)
bgyro_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
row.names(bgyro_y_test)<-c(7401:10347)
bgyro_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
row.names(bgyro_z_test)<-c(7401:10347)
tacc_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
row.names(tacc_x_test)<-c(7401:10347)
tacc_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
row.names(tacc_y_test)<-c(7401:10347)
tacc_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
row.names(tacc_z_test)<-c(7401:10347)
### Making Index
index<-rep('testing',2947)
index_test<-data.frame(index)
row.names(index_test)<-c(7401:10347)

### Reading Training data, Making Index
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
bacc_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
bacc_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
bacc_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
bgyro_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
bgyro_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
bgyro_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
tacc_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
tacc_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
tacc_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
index<-rep('training',7352)
index_train<-data.frame(index)


##Binding data
UCA_HAR_data<-rbind(index_train,index_test)
data<-rbind(x_train,x_test)
labels<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)
body_acc_x<-rbind(bacc_x_train,bacc_x_test)
body_acc_y<-rbind(bacc_y_train,bacc_y_test)
body_acc_z<-rbind(bacc_z_train,bacc_z_test)
body_gyro_x<-rbind(bgyro_x_train,bgyro_x_test)
body_gyro_y<-rbind(bgyro_y_train,bgyro_y_test)
body_gyro_z<-rbind(bgyro_z_train,bgyro_z_test)
total_acc_x<-rbind(tacc_x_train,tacc_x_test)
total_acc_y<-rbind(tacc_y_train,tacc_y_test)
total_acc_z<-rbind(tacc_z_train,tacc_z_test)

### Making Single tidy data
UCA_HAR_data$data<-data
UCA_HAR_data$labels<-labels
UCA_HAR_data$subject<-subject
UCA_HAR_data$body_acc_x<-body_acc_x
UCA_HAR_data$body_acc_y<-body_acc_y
UCA_HAR_data$body_acc_z<-body_acc_z
UCA_HAR_data$body_gyro_x<-body_gyro_x
UCA_HAR_data$body_gyro_y<-body_gyro_y
UCA_HAR_data$body_gyro_z<-body_gyro_z
UCA_HAR_data$total_acc_x<-total_acc_x
UCA_HAR_data$total_acc_y<-total_acc_y
UCA_HAR_data$total_acc_z<-total_acc_z

### Step 2
### Making Briefing tidy data

UCA_HAR_data_brief<-data.frame(rbind('mean','standard deviation'))
colnames(UCA_HAR_data_brief)<-'index'
data<-data.frame(rbind(sapply(UCA_HAR_data$data,mean),sapply(UCA_HAR_data$data,sd)))
body_acc_x<-data.frame(rbind(sapply(UCA_HAR_data$body_acc_x,mean),sapply(UCA_HAR_data$body_acc_x,sd)))
body_acc_y<-data.frame(rbind(sapply(UCA_HAR_data$body_acc_y,mean),sapply(UCA_HAR_data$body_acc_y,sd)))
body_acc_z<-data.frame(rbind(sapply(UCA_HAR_data$body_acc_z,mean),sapply(UCA_HAR_data$body_acc_z,sd)))
body_gyro_x<-data.frame(rbind(sapply(UCA_HAR_data$body_gyro_x,mean),sapply(UCA_HAR_data$body_gyro_x,sd)))
body_gyro_y<-data.frame(rbind(sapply(UCA_HAR_data$body_gyro_y,mean),sapply(UCA_HAR_data$body_gyro_y,sd)))
body_gyro_z<-data.frame(rbind(sapply(UCA_HAR_data$body_gyro_z,mean),sapply(UCA_HAR_data$body_gyro_z,sd)))
total_acc_x<-data.frame(rbind(sapply(UCA_HAR_data$total_acc_x,mean),sapply(UCA_HAR_data$total_acc_x,sd)))
total_acc_y<-data.frame(rbind(sapply(UCA_HAR_data$total_acc_y,mean),sapply(UCA_HAR_data$total_acc_y,sd)))
total_acc_z<-data.frame(rbind(sapply(UCA_HAR_data$total_acc_z,mean),sapply(UCA_HAR_data$total_acc_z,sd)))

UCA_HAR_data_brief$data<-data
UCA_HAR_data_brief$body_acc_x<-body_acc_x
UCA_HAR_data_brief$body_acc_y<-body_acc_y
UCA_HAR_data_brief$body_acc_z<-body_acc_z
UCA_HAR_data_brief$body_gyro_x<-body_gyro_x
UCA_HAR_data_brief$body_gyro_y<-body_gyro_y
UCA_HAR_data_brief$body_gyro_z<-body_gyro_z
UCA_HAR_data_brief$total_acc_x<-total_acc_x
UCA_HAR_data_brief$total_acc_y<-total_acc_y
UCA_HAR_data_brief$total_acc_z<-total_acc_z

### Step 3
### Adding descriptive activity name

activity_label<-read.table('UCI HAR Dataset/activity_labels.txt')
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[1]]<-as.character(activity_label$V2[1])
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[2]]<-as.character(activity_label$V2[2])
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[3]]<-as.character(activity_label$V2[3])
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[4]]<-as.character(activity_label$V2[4])
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[5]]<-as.character(activity_label$V2[5])
UCA_HAR_data$labels[UCA_HAR_data$labels == activity_label$V1[6]]<-as.character(activity_label$V2[6])


###Step 4
### Adding features description to data

features<-read.table('UCI HAR Dataset/features.txt')
colnames(UCA_HAR_data$data)<-as.character(features$V2)
colnames(UCA_HAR_data_brief$data)<-as.character(features$V2)
colnames(UCA_HAR_data$body_acc_x)<-paste(rep('bax',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$body_acc_y)<-paste(rep('bay',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$body_acc_z)<-paste(rep('baz',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$body_gyro_x)<-paste(rep('bgx',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$body_gyro_y)<-paste(rep('bgy',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$body_gyro_z)<-paste(rep('bgz',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$total_acc_x)<-paste(rep('tax',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$total_acc_y)<-paste(rep('tay',128),seq(1,128,1),sep='')
colnames(UCA_HAR_data$total_acc_z)<-paste(rep('taz',128),seq(1,128,1),sep='')

### Step 5 Making Smaller subset
### Activity based mean data
UCA_HAR_labels<-data.frame(UCA_HAR_data$labels,unclass(UCA_HAR_data$data),unclass(UCA_HAR_data$body_acc_x),
                            unclass(UCA_HAR_data$body_acc_y),unclass(UCA_HAR_data$body_acc_z),unclass(UCA_HAR_data$body_gyro_x),
                            unclass(UCA_HAR_data$body_gyro_y),unclass(UCA_HAR_data$body_gyro_z),unclass(UCA_HAR_data$total_acc_x),
                            unclass(UCA_HAR_data$total_acc_y),unclass(UCA_HAR_data$total_acc_z))
colnames(UCA_HAR_labels)[1]<-'labels'
UCA_HAR_labels<-split(UCA_HAR_labels,labels)
UCA_HAR_labels<-t(sapply(UCA_HAR_labels,function(x) lapply(x,mean)))
write.table(UCA_HAR_labels,'Activity_based_mean.txt',row.names = FALSE)

### Subject based mean data
UCA_HAR_subject<-data.frame(UCA_HAR_data$subject,unclass(UCA_HAR_data$data),unclass(UCA_HAR_data$body_acc_x),
                            unclass(UCA_HAR_data$body_acc_y),unclass(UCA_HAR_data$body_acc_z),unclass(UCA_HAR_data$body_gyro_x),
                            unclass(UCA_HAR_data$body_gyro_y),unclass(UCA_HAR_data$body_gyro_z),unclass(UCA_HAR_data$total_acc_x),
                            unclass(UCA_HAR_data$total_acc_y),unclass(UCA_HAR_data$total_acc_z))
colnames(UCA_HAR_subject)[1]<-'subject'
UCA_HAR_subject<-split(UCA_HAR_subject,subject)
UCA_HAR_subject<-t(sapply(UCA_HAR_subject,function(x) lapply(x,mean)))
write.table(UCA_HAR_subject,'Subject_based_mean.txt',row.names = FALSE)

### Tidy Data of all
write.csv(data.frame(UCA_HAR_data$index,UCA_HAR_data$subject,UCA_HAR_data$labels,unclass(UCA_HAR_data$data),unclass(UCA_HAR_data$body_acc_x),
                     unclass(UCA_HAR_data$body_acc_y),unclass(UCA_HAR_data$body_acc_z),unclass(UCA_HAR_data$body_gyro_x),
                     unclass(UCA_HAR_data$body_gyro_y),unclass(UCA_HAR_data$body_gyro_z),unclass(UCA_HAR_data$total_acc_x),
                     unclass(UCA_HAR_data$total_acc_y),unclass(UCA_HAR_data$total_acc_z)),file='tidydata.txt',row.names=FALSE)

### Release memory
rm(data,x_train,x_test,labels,y_train,y_test,total_acc_x,total_acc_y,total_acc_z,tacc_x_test,tacc_x_train,tacc_y_train,tacc_y_test,tacc_z_test,
   tacc_z_train,subject,subject_test,subject_train,body_acc_x,bacc_x_test,bacc_x_train,body_acc_y,bacc_y_test,bacc_y_train,body_acc_z,
   bacc_z_test,bacc_z_train,body_gyro_x,bgyro_x_test,bgyro_x_train,body_gyro_y,bgyro_y_test,bgyro_y_train,body_gyro_z,bgyro_z_test,
   bgyro_z_train,index,index_test,index_train,features,activity)
