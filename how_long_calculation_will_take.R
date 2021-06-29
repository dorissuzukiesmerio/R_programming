# To know how much time the code will run: "Profile"

str(runif) #random number. By default it will be between 0 and 1
system.time(runif(300^3,1,10))

system.time(Sys.sleep(10))

#Profiler : what time of the code will take more time

system.time()

#1 )install profvis package, ggplot2
library(profvis)

profvis({
  data(diamonds, package = "ggplot2")
  
  plot(price ~ carat, data = diamonds)
  m <- lm(price ~ carat, data = diamonds)
  abline(m, col = "red")
})

#2) You can use R build in function : Profile, Profile Selected lines
data(diamonds, package = "ggplot2")

plot(price ~ carat, data = diamonds)
m <- lm(price ~ carat, data = diamonds)
abline(m, col = "red")

#3) Turn on and off the profiler
Rprof() # Turn on the profiler
data(diamonds, package = "ggplot2")
plot(price ~ carat, data = diamonds)
m <- lm(price ~ carat, data = diamonds)
abline(m, col = "red")
Rprof(NULL) #Turn off R Profiler
summaryRprof()
