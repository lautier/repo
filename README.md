---
title: "README"
output: word_document
---
The run_analysis.R script is a script which can be used to tidy data collected from the accelerometers from the Samsung Galaxy S smartphone.
First off, the script merges the test and training sets. Next, it extracts only the variables that contain the mean and standard deviation values for each of the variables. Also, it attributes descriptive values to numerical values in regard to "Activity type" variable. 
After drawing only the mean and standard deviation values, a mean value for each variable is calculated for each subject for every type of activity (30 subjects x 6 types of activities).


The dataset includes the following files:
run_analysis.R - the script performing the analysis
README.md - a markdown file describing the script and how the files included in the repository are connected 
Codebook.md - a markdown file containing the description of variables/data in the set

