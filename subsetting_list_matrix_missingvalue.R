rm(list=ls())
m <- matrix(1:12, nrow=3, ncol=4)
m
m[2,3] #selects 2nd row, 3rd column
m[2,] #all 2nd row
m[,4] # all 4th column

# Subsetting a NA/NaN value: very helpful in practice

a<- c(2:15, NaN, TRUE) # list with numbers, missing and boolen
a

#Find location of *NaN* value using 'is.nan()' function
ind <- is.nan(a) # generates boolean with TRUE if NaN
ind

# Subset with location of *NaN* value
a[ind]
a[is.nan(a)]

#Subset withe 'Not NaN' values using '!' 
a[!ind]
