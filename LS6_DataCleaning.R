## Create variable sale.price.n as numeric
## Use the gsub command to replace digits with a blank space
bk$SALE.PRICE.N <- as.numeric(gsub("[^[:digit:]]","", bk$SALE.PRICE))
count(is.na(bk$SALE.PRICE.N))

## Make all variable names lower case
names(bk) <- tolower(names(bk))

# Create new variables:
# Get rid of leading digits
# Make factors numeric values
bk$gross.sqft <- as.numeric(gsub("[^[:digit:]]","", bk$gross.square.feet))
bk$land.sqft <- as.numeric(gsub("[^[:digit:]]","", bk$land.square.feet))
bk$year.built <- as.numeric(as.character(bk$year.built))

## New dataset for data on properties that have sales
bk.sale <- bk[bk$sale.price.n!=0,]

## New dataset for 1,2,3 bedroom family homes
bk.homes <- bk.sale[which(grepl("FAMILY",bk.sale$building.class.category)),]

## Remove outliers that seem like they weren't actual sales
bk.homes$outliers <- (log10(bk.homes$sale.price.n) <=5) + 0
bk.homes <- bk.homes[which(bk.homes$outliers==0),]

## Make sure that dates are formatted correctly
typeof(bk.homes$sale.date)

## Format dates

