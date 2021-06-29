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
