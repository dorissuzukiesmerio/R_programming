# If conditions: 
#if, 
#if/else, 
#if/ else if/else

a <- 7

if (a>3){
  print("a is bigger than 3")
}

a<- 2
if (a>3){
  print("a is bigger than 3")
}else {
  print("a is NOT bigger than 3")
}

a <- 5
if (a>3){
  print("a is greater than 3")
} else if (a==3) {
  print("a is equal to 3")
} else {
  print("a is smaller than 3")
}

# Attention: after else, no need to specify condition, since it covers all the rest
#```r

#ifselse function
a <- 5
ifelse(a>3,"a is bigger than 3","a is not bigger than 3")