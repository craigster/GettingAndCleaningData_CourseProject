# takes the tidy data set produced by the run_analysis.R script and transforms it
# from wide form to long form

tidyDat <- read.table("tidy_data.txt", header=T)

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
