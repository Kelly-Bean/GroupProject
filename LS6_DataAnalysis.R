## do a bit of exploration to make sure there's not anything
## weird going on with sale prices
attach(bk)
hist(sale.price.n) 
detach(bk)

##Relationship between sqft and sale price
plot((bk.homes$gross.sqft),(bk.homes$sale.price.n), 
     main="Square Footage vs. Sale Price", xlab='Square Footage', ylab='Sale Price')

## Plots log transformed data for 1-, 2-, and 3-family homes
bk.homes <- bk.sale[which(grepl("FAMILY",bk.sale$building.class.category)),]
dim(bk.homes)
plot(log10(bk.homes$gross.sqft),log10(bk.homes$sale.price.n), 
     main="Log Transformed Sqft vs. Sale Price", xlab='Log10(SqFt)', ylab='Log10(SalePrice)')

## Presents a summary of homes which sold for less than $1000000
summary(bk.homes[which(bk.homes$sale.price.n<1000000),])
# How to include only sqft and sale price?

