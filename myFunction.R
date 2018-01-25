myFunction <- function (){
	x <- rnorm(100)
	mean(x)
}

mySecondFunction <- function(x){
	x + rnorm(length(x))
}