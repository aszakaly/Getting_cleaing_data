# Data source for the analysis:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Assume that you have extracted this data and moved it to your working directory /data (from the UCI HAR Dataset)

# Steps of cleaning the data 

# 1. Reading test and train sets, then merging them (results 3 data tables X S Y)

a <- read.table("data/train/X_train.txt")
b <- read.table("data/test/X_test.txt")
c <- read.table("data/train/subject_train.txt")
d <- read.table("data/test/subject_test.txt")
e <- read.table("data/train/y_train.txt")
f <- read.table("data/test/y_test.txt")

X <- rbind(a, b)
S <- rbind(c, d)
Y <- rbind(e, f)

head(X)
head(Y)
head(S)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("data/features.txt") #Variable names of dataset X
head(features)
good_feature_no <- grep("-mean\\(\\)|-std\\(\\)", features[, 2]) #Selection of right measures
X <- X[, good_feature_no] #subset X for the right measures
head(X)
head(good_feature_no)
names(X) <- features[good_feature_no, 2] #Renaming variables
names(X) <- gsub("\\(|\\)", "", names(X)) #cleaning variable names
names(X) <- tolower(names(X)) #lower case transformation

head(X)

# 3. Activity names, instead of numbers and adding the subject ids

activities <- read.table("data/activity_labels.txt")
Y[,1] = activities[Y[,1], 2] #rename numbers to descriptive activity names
names(Y) <- "activity"
head(Y)

names(S) <- "subject_id" #rename subjects row
total <- cbind(S, Y, X) #merge all datasets, column bind
head(total)
write.table(total,"merged_clean_data.txt",row.names=FALSE)

# 4. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

install.packages("plyr")
library(plyr)

set2 <- ddply(total,.(activity,subject_id),function(df) colMeans(df[,3:ncol(df)]))
head(set2)

write.table(set2,"averages.txt",row.names=FALSE)
