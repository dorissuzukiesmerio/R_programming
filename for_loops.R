#For loops:
for (i in 1:5){
  print(i)
}

for (i in sequence(1, 5)){
  print(i)
}

for (iterator in sequence){ #full syntax
  do task
}

for (i in 1:5) print(i) # short syntax

for (i in seq(1, 5)) print(letters[i]) 

# While loops
while (a<5){
  print(a)
  a <- a+1
}

while (this condition is true){ # syntax
  do a thing
}


# For loops are on a sequence
# While loops are on a condition