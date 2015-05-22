# Getting and Cleaning Data Project

## Data Code Book
To describe the data tidying process, the data source and the variables

## Original Data Set

UCI Human Activity Recognition Using Smartphones Data Set:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data included a test and train set of data, a list of features, a list of activities, and a subject list.

## Transformations applied to data set by run_analysis.R

- Joined training/test labels, training/test subject ids, and training/test feature set data together.
- Joined the labels and features with the data set
- Mapped the activity key to the actual descriptive value.
- data was grouped by activity and subject id and reports the average feature value
