Getting and Cleaning Data Course Project
=============================
---------------
##Aim
###Cleaning up and merge data into single tidy data

####Data Preprocess
Loading training and testing data seperatly.

Adding Index to seperate training and testing data.
 

Adding [row name](Testing data using row name 7401-10347) to testing data so there won't be error when merging testing and training data together.
####Step 1
#####Merges the training and the test sets to create one data set


Merging Each variable of Testing and Training data by **rbind**.

After merging them [vertically](Testing & Training), adding them to single data frame [horizontally](diffenent variables).

Tidy data named **UCA_HAR_data**
####Step 2
##### Extracts only the measurements on the mean and standard deviation for each measurement. 
Making new variable call **UCA_HAR_data_briefing**

Do the same step as step 1, with replace data to rbind of **mean** and **std**

Calculate of mean and std is applied by **sapply**

####Step 3
##### Uses descriptive activity names to name the activities in the data set
Loading _activity_label.txt_.

Changing **labels** in tidy data set o descriptive activity name by using [perfect match]( A == B ) to label number.

####Step 4
#####Appropriately labels the data set with descriptive variable names.
Loading _features.txt_.

Changing the **colname** to descriptive features name by simply adding colname to data.

Changing other variables **colname** to [specific colname](ex: body_acc_x has colname V1~V128, changing to bax1~bax128), by using **paste**,**rep** and **seq**.
####Step 5
#####Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Unclass the nested data frame to make new variable **UCA_HAR_subject** and **UCA_HAR_labels**.

Adding descriptive colname.

Split data to subject or label based by **split**.

Calculate and replace the data by 
````
t(sapply(UCA_HAR_subject,function(x) lapply(x,mean)))
````
#### Memory Clean Up
Remove used data by **rm()** to clean up memory.

