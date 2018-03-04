x<-list(a=1:5,b=rnorm(10))
lapply(x, mean)

x<-1:4
lapply(x, runif,min=0,max=10)

x<-list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
lapply(x,function(elt) elt[,1])

x<-list(a=1:5,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
sapply(x, mean)

x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

noise <- function(n,mean,sd){
  rnorm(n,mean)
}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise, 1:5,1:5,2)

x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
tapply(x, f, mean)

x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
split(x,f)

lapply(split(x,f), mean)

mean(xxx)
traceback()

lm(yyy-xxx)
traceback()

debug(lm)
lm(yyy)

options(error = recover)
read.csv("nonsuchfile")