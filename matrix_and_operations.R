# Vector:
str <- c("a","b","c") # combine elements into a VECTOR
str
a<- (4, 5.6, 20)
b<-c("TRUE", "FALSE")

#Coercion is a vetor containing different objects:
str1 <-c("a","b","c", 5, 4.5)
str1
class(str1)

b1<- c(5, FALSE)
b1
class(b1)

#Explicit COERCION: CONVERT from one CLASS to another
a<- 0:6
class(a)
as.numeric(a)
as.logical(a)
as.character(a)

#Nonsensical coercial :
str <- c("a","b","c")
class(str)
as.numeric(str)
as.logical(str)
as.character(str)

#VECTORS OPERATION:
a <- 3:7
b <- 20:24
a + b
a>b
a<b
a>5
a*b
a/b

##MATRICES: vectors with dimension attribute (nrow, ncol)
m <- matrix(1:12, nrow=3, ncol=4)
m <- matrix (1:12, 3, 4)
m
dim(m) # nrows, ncol

#another way to create matrices
m <- 1:12 # assign values
dim(m)<- c(3,4) # assign dimensions


##MATRIX FUNCTIONS:
# Define a matrix
m2 <- matrix(rep(10,9),3,3) # repeat 10 for 9 times, 3 rows, 3 columns
m2
mr <- matrix(runif(9),3,3) #row and columns. 9 random by unif distribution
mr
#Transpose matrics
t(mr)
#Diagonal of matrics
diag(mr)
#Determinant
det(mr)
#Inverse
solve(mr)

### MERGING MATRICES:
m2 <- letters[seq(from=1, to=12)]
dim(m2) <- c(3,4)
m2

cbind(m, m2)
rbind(m, m2)

#