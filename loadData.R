# Loads a data frame with the multiple datasets for the experiment subjects, activities 
# and the recorded data. These three sets are merged into a single set. Because both the
# training and test data are of the same form and the file names differ only in location
# and file name suffix (_train or _test), this function can load either set.
#
# params:
#   type - must be either "train" or "test", indicates which source of data to load
#   allFeatures - set containing the feature names (activity recordings)
#   desiredFeatures - subset of feature containing only the features that should
#       be included in the returned data set
#   activityNames - set of all activities for the experiment, used to transform the
#       numeric activity value in the set to a factor
#
loadData <- function(type, allFeatures, desiredFeatures, activityNames) {
    dir <- paste("./data/", type, "/", sep="")
    
    # read in test data and apply the features as the variable names
    X <- read.table(
        paste(dir, "X_", type, ".txt", sep="")
        )
    # apply the variable names to the set
    names(X) <- allFeatures[,2]
    # subset the data variables to only the desired feature variables
    X <- X[,which(names(X) %in% desiredFeatures)]
    
    # get the subjects performing the activities
    fileName <-
    subjects <- read.table(
        paste(dir, "subject_", type, ".txt", sep="")
        )
    names(subjects) <- "Subject"
    
    # get the activities performed
    Y <- read.table(
        paste(dir, "y_", type, ".txt", sep="")
        )
    names(Y) <- "Activity"
    # convert the activity variable into a factor
    Y$Activity <- factor(Y$Activity, labels=activityNames)
    
    # combine the three sets (adding the subjects and activities as the leading
    # columns). add an additional leading variable containing the source of 
    # the data set ("train" or "test")
    X <- cbind(Source=rep(type, nrow(X)),
               subjects, Y, X)
    
    # return the single set
    X
}