#Remove all current plots
dev.off()
rm(list=ls())
data(mtcars)

View(mtcars) #to view dataset
dim(mtcars) #rows, columns
names(mtcars)
head(mtcars)
mtcars$mpg
summary(mtcars)

#Plot

boxplot(mtcars$mpg, col="blue", main="Boxplot for mpg")

factor(matcars$cyl) #shows how many types of cyl there are
boxplot(mpg ~ cyl, data = mtcars, 
        col=terrain.colors(3),
        xlab="cylinders",
        ylab="mpg")
legend("topright", c("4","6","8"),fill=terrain.colors(3))
dev.copy(png, 'filename.png')

hist(mtcars$hp, col="magenta")

barplot(mtcars$mpg, col="green", main="MPG for 32 cars")
dev.off()
par(mfrow=c(1,2)) #row,column
hist(mtcars$mpg, col="blue")
hist(mtcars$cyl, col="red")

dev.off()
plot(mtcars$mpg,mtcars$wt,main="Car Fuel vs Weight",
     xlab="Milage per Gallon",ylab="Weight",
     col = mtcars$cyl,pch=16,cex=1)
legend("topright",legend=c(8,6,4),pch=16,cex=1,#cex=size of the dots
       col=c("grey","magenta","blue"))

# GGplot (comparable to python's matplotlib)
#install.packages("ggplot2")
library(ggplot2)

#Basic component of ggplot
# A data frame
#aes: aesthetic mappings showing how data are mapped to color, size
#geoms: geometric objects like points, lines, shapes.
#facets: for conditional plots.
#stats: statistical transformations like binning, quanti les, smoothing.
#scales: what scale an aesthetic map uses coordinate system

#quick plot. but less control
rm(list=ls())
dev.off()
data(iris)
names(iris)
library(ggplot2)
qplot(Sepal.Length, Sepal.Width, data=iris,
      color=factor(Species),
      shape=factor(Species),
      geom=c("point","smooth"))

qplot(Sepal.Lenght, fill=Species, data=iris)
qplot(Sepal.Lenght, geom="density",)
qplot(Sepal.Lenght, Petal.Lenght, facets = .~Species, data=iris)
