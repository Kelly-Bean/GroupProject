## Histogram Sale Price
attach(bk)
hist(sale.price.n) 
detach(bk)

# Plot sqft and sale price
plot(bk.sale$gross.sqft,bk.sale$sale.price.n)
plot(log10(bk.sale$gross.sqft),log10(bk.sale$sale.price.n))

##Relationship between sqft and sale price
plot((bk.homes$gross.sqft),(bk.homes$sale.price.n), 
     main="Square Footage vs. Sale Price", xlab='Square Footage', ylab='Sale Price')

## Plots log transformed data for 1-, 2-, and 3-family homes
bk.homes <- bk.sale[which(grepl("FAMILY",bk.sale$building.class.category)),]
dim(bk.homes)
plot(log10(bk.homes$gross.sqft),log10(bk.homes$sale.price.n), 
     main="Log Transformed Sqft vs. Sale Price", xlab='Log10(SqFt)', ylab='Log10(SalePrice)')
plot(log(bk.homes$gross.sqft),log(bk.homes$sale.price.n))


## Presents a summary of homes which sold for less than $1000000
summary(bk.homes[which(bk.homes$sale.price.n<1000000),])

