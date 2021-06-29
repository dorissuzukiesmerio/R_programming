#Class of elements

str <- "string" # within "quotes"
class(str)
a <- 5
class(a)
b <- 4L # L to assign as an integer
class(b)
c <- 6i#i to assign as a complex number 
-3:3 # range 
c<- (-3:3) #assign to a vector
c <- 6i ^ (-3:3)
class(c)
d <- 1:10 < 5 #logical/boolean
1:10 < 5
class(d)

#Assign elements to a list
list1 <- list(str,a,b,c,d) #A vector that containts objects from different class is call a list
list1

#NaN if doing operations with 0 and Inf
Inf/Inf
#NA is missing value

# Create random numeric numbers
?runif
runif(1)

rnorm(2, 10, 20)

sample(12, 5)#5 integers between 1 and 12
sample(12) # random sampling

set.seed(1234)
runif(3) # uniform distributed
