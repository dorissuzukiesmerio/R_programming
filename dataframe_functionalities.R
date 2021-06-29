#Dataframe
df <- data.frame(data=sample(12),title=LETTERS[sample(12)])
dim(df)
head(df)
names(df)
nrow(df)
ncol(df)

names(iris)
# Change name
names(iris) <- c("a", "b", "c","d","e")
head(iris)

#Change name for particular columns:
names(iris)[4] <- "new_name"

data(mtcars)
mpg1 <- mtcars$mpg
mpg1
mpg2 <- mtcars[,1]
mpg2
cylinder <- mtcars$cyl
cylinder


# Defining functions:

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
F2C(100)
F2C("100")
F2C("very hot")