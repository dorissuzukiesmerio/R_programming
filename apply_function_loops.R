# apply to loop
str(apply)
m <- matrix(1:12,3,4)
print(m)
apply(m,1,sum) # margin==1 : rows
apply(m,2,sum) # margin==2 : columns
# is not faster than loop, but is simpler coding

#There are default functions 
rowSums(m)
colSums(m)
rowMeans(m)
colMeans(m)

# But apply can apply any function
list1 <- list(l1=seq(1,10),l2=20:29, l3=rnorm(4))
print(list1)
list1$l3

#long apply
lapply(list1, mean)

#short apply - good for speeding it up
sapply(list1, mean)
