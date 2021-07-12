# Create random numeric numbers
?runif # help from R to understand the command

# random according to uniform distribution
runif(1)
runif(2, 10, 20) # n_of_elements, min, max


?rnorm # random according to normal distribution
rnorm(2, 10, 20) # n_of_elements, mean, sd

?sample
sample(12, 5)#5 integers between 1 and 12
sample(12) # random sampling


# Create seed 
set.seed(1234)
runif(3) # uniform distributed
