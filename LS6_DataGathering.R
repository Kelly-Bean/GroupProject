##Packages installed:
#install.packages('plyr')
#install.packages('gdata')

library(plyr)
library(gdata)
setwd("C:\\Users\\Kelly\\Desktop\\ClassFall2016\\Doing Data Science")

#Save csv data to single object 'bk'
bk <- read.csv("rollingsales_statenisland2.csv",skip=4,header=TRUE)

## Check the data
head(bk)
summary(bk)
str(bk) 


