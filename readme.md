Getting and Cleaning Data project - Read Me
========================================================
This repo is created for the Coursera.org/John Hopkins Data Science Spcialization, Getting and Cleaning Data course peer review project.
The task carried out is to tidy the dataset on the below source with proper labelling and keeping mean and standard deviation measures. The script also creates a second dataset of group averages of all measures.


* Unzip the source
  ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )
  
  move it from /UCI HAR Dataset into your R working directory /data

* Execute run_analysis.r

* The script requires the plyr packages, but installation of this package is included in the code

* The script will read the dataset and write these files:

  merged_clean_data.txt  -- 8.35 Mb, a 10299x68 data frame

  averages.txt  -- 0.225 Mb, a 180x68 data frame
  
  both of these files are tab delimited txt files
