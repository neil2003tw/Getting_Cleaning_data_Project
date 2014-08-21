Code Book
========
--------
##UCA_HAR_data
######This is the tidy dataset of all data, making by nested data.frame.
```
> names(UCA_HAR_data)
 [1] "index"       "data"        "labels"      "subject"     "body_acc_x"  "body_acc_y"  "body_acc_z"  "body_gyro_x"
 [9] "body_gyro_y" "body_gyro_z" "total_acc_x" "total_acc_y" "total_acc_z"
```
######Some frame under **UCA_HAR_data** have another layer of frame, formed a nested frame, which is easier to use and more user friendly.
```
> names(UCA_HAR_data$body_acc_x)
  [1] "bax1"   "bax2"   "bax3"   "bax4"   "bax5"   "bax6"   "bax7"   "bax8"   "bax9"   "bax10"  "bax11"  "bax12"  "bax13" 
 [14] "bax14"  "bax15"  "bax16"  "bax17"  "bax18"  "bax19"  "bax20"  "bax21"  "bax22"  "bax23"  "bax24"  "bax25"  "bax26" 
...
```
------

##UCA_HAR_data_briefing
######This is a briefing of tidy data set, show the mean and standard deviation of specific variable.
```
names(UCA_HAR_data_brief)
 [1] "index"       "data"        "body_acc_x"  "body_acc_y"  "body_acc_z"  "body_gyro_x" "body_gyro_y" "body_gyro_z"
 [9] "total_acc_x" "total_acc_y" "total_acc_z"
 ```
######In this dataset, labels and subject data is removed due to they are non-numeric data.
######This dataset is also a nested dataset, there are several frame under frame, is more instinct to use in this data.

------


##UCA_HAR_subject
##UCA_HAR_labels



######This 2 data is in class of list, have lots of unnested variables, in the reason of nested data frame cannot write in to file.
######It shows variables mean of catagorized data, subject based and label based.