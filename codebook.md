Code Book
========================================================
##Data source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Once you have unzipped the source file move it from /UCI HAR Dataset into your R working directory /data

The description of this original datasource can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Prerequisites
The run_analysis.R script requires the plyr package to be installed.
To avoid issues the installation command is included on the script, take this into consideration before executing.

##Process of data cleaning
*1. The script reads all required datasets
*2. Merging of training and test datasets (resulting in 3 data frames)
*3. Extraction of only the measurements on the mean and standard deviation for each measurement type
*4. Labelling activity names (instead of numeric code and adding the subject ids
*5. Writing the tidy dataset
*6. Creating the second dataset of aggregated averages
*7. Writing the secon dataset

##Outputs
*merged_clean_data.txt
*averages.txt

##Activity labels
The following activity labels can occur in the file:
*WALKING
*WALKINGUPSTAIRS
*WALKINGDOWNSTAIRS
*SITTING
*STANDING
*LAYING

##Names of measures
* subject_id
* activity
* tbodyacc-mean-x
* tbodyacc-mean-y
* tbodyacc-mean-z
* tbodyacc-std-x
* tbodyacc-std-y
* tbodyacc-std-z
* tgravityacc-mean-x
* tgravityacc-mean-y
* tgravityacc-mean-z
* tgravityacc-std-x
* tgravityacc-std-y
* tgravityacc-std-z
* tbodyaccjerk-mean-x
* tbodyaccjerk-mean-y
* tbodyaccjerk-mean-z
* tbodyaccjerk-std-x
* tbodyaccjerk-std-y
* tbodyaccjerk-std-z
* tbodygyro-mean-x
* tbodygyro-mean-y
* tbodygyro-mean-z
* tbodygyro-std-x
* tbodygyro-std-y
* tbodygyro-std-z
* tbodygyrojerk-mean-x
* tbodygyrojerk-mean-y
* tbodygyrojerk-mean-z
* tbodygyrojerk-std-x
* tbodygyrojerk-std-y
* tbodygyrojerk-std-z
* tbodyaccmag-mean
* tbodyaccmag-std
* tgravityaccmag-mean
* tgravityaccmag-std
* tbodyaccjerkmag-mean
* tbodyaccjerkmag-std
* tbodygyromag-mean
* tbodygyromag-std
* tbodygyrojerkmag-mean
* tbodygyrojerkmag-std
* fbodyacc-mean-x
* fbodyacc-mean-y
* fbodyacc-mean-z
* fbodyacc-std-x
* fbodyacc-std-y
* fbodyacc-std-z
* fbodyaccjerk-mean-x
* fbodyaccjerk-mean-y
* fbodyaccjerk-mean-z
* fbodyaccjerk-std-x
* fbodyaccjerk-std-y
* fbodyaccjerk-std-z
* fbodygyro-mean-x
* fbodygyro-mean-y
* fbodygyro-mean-z
* fbodygyro-std-x
* fbodygyro-std-y
* fbodygyro-std-z
* fbodyaccmag-mean
* fbodyaccmag-std
* fbodybodyaccjerkmag-mean
* fbodybodyaccjerkmag-std
* fbodybodygyromag-mean
* fbodybodygyromag-std
* fbodybodygyrojerkmag-mean
* fbodybodygyrojerkmag-std

