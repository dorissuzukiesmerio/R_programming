# Defining functions:
#General syntax:
f <- function(arg){
  do function with argument
}
#Examples:

squareroot <- function(a){
  a^0.5
}
squareroot(49)
#or
squareroot <-function(a){
  x = a ^ 0.5
  return x
}

Addtwo <- function(a,b){
  a+b
}

Addtwo(1,2)

sqsum <- function(a){
  sq <- a^0.5
  sumsq <- a+sq  
  output <- list(sq=sq, sumsq=sumsq)
}
sqsum(49)

sqsum$sq(49)
sqsum$sumsq
sqsum$output

F2C <- function(temp){
  stopifnot(is.numeric(temp)) #will not execute if it is not number
  c <- ((temp - 32) * (5 / 9))
  return(c)
}
F2C(100) # fahrenheit to celsius
F2C("100")
F2C("very hot")

?function
distance <- (function(a,b){
  c <- (a^2 + b^2)^(1/2)
  return(c)
})

distance (3, 4)

#An anonymous function:
(function(x, y){ z <- x^2 + y^2; x+y+z })(0:7, 1)

# Built-in functions on R:
mean(argument)
min(arg)
max(arg)
quantily(arg)
summary(arg)

#Example:
v <- c(2, NA, 4, NA, 6)
mean(v, na.rm=TRUE)

