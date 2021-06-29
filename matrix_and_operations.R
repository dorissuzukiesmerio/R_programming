# Define a matrix

m2 <- matrix(rep(10,9),3,3)
m2
mr <- matrix(runif(9),3,3) #row and columns
#Transpose matrics
t(mr)
#Diagonal of matrics
diag(mr)
#Determinant
det(mr)
#Inverse
solve(mr)
