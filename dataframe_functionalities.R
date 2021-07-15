#Dataframe
df <- data.frame(data=sample(12),title=LETTERS[sample(12)])
dim(df)
head(df)
names(df)
nrow(df)
ncol(df)

#Available dataframes in R, such as :
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


