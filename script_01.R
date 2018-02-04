#dput()/dget()

y <- data.frame(a = 1, b = "a")
dput(y)

#	structure(list(a = 1, 
#		         b = structure(1L, .Label = "a", 
#					     class = "factor")), 
#		    .Names = c("a", "b"), row.names = c(NA, -1L), 
#		    class = "data.frame")

dput(y, file = "y.R")
new.y <- dget("y.R")
new.y


#dump()

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")


#Connections

con <- file("foo.txt", "r")
data <- read.csv(con)
close(con)
#the same as
data <- read.csv("foo.txt")