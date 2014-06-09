# get the list of activities (we'll transform the numeric value for activities 
# in the source data with a factor using this activities set)
activities <- read.table("./data/activity_labels.txt")
activityNames <- activities$V2

# read in all features. these will be the variables names for the X_test and X_train sets.
allFeatures <- read.table("./data/features.txt")
# we only want the mean() and std() variables from the list, so find only those variables
# from the full features set
desiredFeatures <- allFeatures[grep("mean\\(\\)|std\\(\\)", allFeatures$V2),"V2"]

# source containing utility function for loading the train and test sets
source("loadData.R")

testDat <- loadData("test", allFeatures, desiredFeatures, activityNames)
trainDat <- loadData("train", allFeatures, desiredFeatures, activityNames)

# merge both sets into one
dat <- rbind(testDat, trainDat)

# replace the variable names with longer, more descriptive ones
# the replacement names are stored in the working directory (and were created by hand)
replacementNames <- read.table("var_replacement_names.txt")
names(dat) <- replacementNames$V1

# the experiment recording variables are in columns 4-69 of the data set.
# insert a new column for each recording variable that contains the mean
# of the variable for each activity and subject

#library(plyr)

# for each recording variable...
for (i in 4:nrow(replacementNames)) {
    # get the text and column index for the variable to average
    colName <- replacementNames[i,1]
    colIndex <- grep(colName, colnames(dat))
    
    # calculate the mean over each subject and activity
    
    # TODO: seemed a good idea to use plyr to calc the means, but didn't get it to
    # work (calculated the means for all values, but grouping by subject and activity),
    # but I'd like to come back later and work it out
    #means <- ddply(dat, 
    #               c("Subject", "Activity"), # group by subject and activity
    #               summarize, mean(dat[,colIndex]))
    means <- aggregate(
        # agg formula: mean of column specified, group by subject and activity
        dat[,colIndex]~Subject+Activity, 
        dat, mean)
    
    # name the calculated column to the "Mean of" the original column name
    names(means)[3] <- paste("Mean_of_", colName, sep="")
    
    # merge the calculated means into the set by subject and activity, this adds 
    # a new column ("Mean of" variable) into the existing set
    
    dat <- merge(dat, means, 
                 by.x=c("Subject","Activity"), by.y=c("Subject","Activity"), 
                 all=T)
}

# export the new tidy data set
write.table(dat, "tidy_data.txt", row.names=F)