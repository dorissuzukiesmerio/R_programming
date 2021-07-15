#Writing to csv and from csv

data1 <-iris
write.csv(data1,"data1.csv")

data2 <- read.csv("data1.csv")

# Writing to and from xls , excel file
install.packages("xlsx")
library(xlsx)

data3 <- airquality
write.xlsx(data3, "data3.xls")

data4 <- read.xlsx("data3.xlsx")


## READING AND WRITING TABLES (Matrices and Data Frame Section)
# from link (online data) or from working directory

read.table() # text format
read.csv() # csv
read.xlsx() # excel , install xlsx packages
readLines() # lines of text file
source() # R code

write.table()
write.csv()
write.xlsx()
writeLines()

#Examples:

#Online sale data
# Read online csv data:
salesdata <-read.csv('https://support.spatialkey.com/wp-content/uploads/2021/02/Sacramentorealestatetransactions.csv')
dim(salesdata) #nrows, ncol
names(salesdata) # column names

#Save output to csv file
write.csv(salesdata, 'SalesData.csv')

# Example 2:
#Reading POEM
poem <- readLines("http://lib.ru/SHAKESPEARE/sonnets.txt")
poem[10:20]

#Writing poem :
writeLines(poem[10:20], "Sonet1.txt")
