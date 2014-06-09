#Getting and Cleaning Data
##Course Project

This repository contains both the R scripts and data sources necessary to generate a merged tidy data set for the Samsung wearable computing data collection project.

The R scripts expect the source data to be contained in a sub-directory of the working directory named **"data"**. At the root of the **"data"** directory are the features (recorded motion data for the experiment) and activity files. Within the **"data/test"** and **"data/train"** directories are the experiment result files for the participants involved (subjects), activities performed (e.g. walking, standing, etc.), and the recorded results.

Two R scripts are included in the repository:
   
* **loadData.R** - This script contains a utility function, *loadData*, that takes a specified data type ("train" for the training data, "test" for the test data) and returns a single data comprised of the subjects, their activities and the related recorded variables (e.g. body acceleration along each of the X,Y, and Z axes) 
* **run_analysis.R** - This is the main processing script. It reads in the activity and features information. It also uses the *loadData* function to read in the test and training data sets. The test and training data sets are merged and the feature variable names are changed to be longer and more descriptive. For each feature variable, a new column is added which is the mean of that variable for each subject and activity. Finally, the data set is exported to a file named **tidy\_data.txt**.

To generate the tidy data set, only the **run_analysis.R** script is needed. This script loads the **loadData.R** script as needed. The script can be run in R by:

    source("run_analysis.R")

The resulting tidy data set includes column headers and can be loaded in R with:

    tidyDat <- read.table("tidy_data.txt", header=T)

The repository contains a **CodeBook.MD** listing all the set variables. The data set is in wide format. Each record contains the Subject, Activity, Source (test or train), and 132 variables of recorded data and the means of those variables over Subject and Activity. If preferred the set can be converted into long format using the **reshape2** library. Note that in the long form, the "Mean of" variable fields will be repeated for each combination of subject and activity. When transforming the wide form to the long form, it's necessary to get the unique records for the "Mean of" variables. This can be done with the following code (the **meltTidyData.R** script in the repo will load the tidy data set and convert it to a long form set named ***tidyDatMelt*** using this code):


	library(reshape2)
	
	# get all column names for the set
	datNames <- names(tidyDat)
	
	tidyDatMelt <- melt(tidyDat,
	    id=c("Subject","Activity","Source"), 
	    # columns 4 - 135 contain the variables and their means
	    measure.vars=datNames[4:135]) 
	
	meanNames <- datNames[grep("Mean_of", datNames)]
	tidyDatMelt <- rbind(
	    # rows without the "mean of" variables
	    tidyDatMelt[!tidyDatMelt$variable %in% meanNames,],
	    # unique list of the rows with the "mean of" variables
	    unique(tidyDatMelt[tidyDatMelt$variable %in% meanNames,])
	    )
 

----------

**Source data published by:**

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

For more information visit: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ")