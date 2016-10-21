##Packages installed:
#install.packages('plyr')
#install.packages('gdata')

library(plyr)
library(gdata)
setwd(paste(getwd(),"/GroupProject",sep=""))

#Save csv data to single object 'bk'
bk <- read.csv("rollingsales_statenisland2.csv",skip=4,header=TRUE)

## Check the data
head(bk)
summary(bk)
str(bk) 


