Just_add()


a <- c(4,5,6)
b <- c(2,8,9)
dist(rbind(a,b))
Vec_dist

#Flow Control#
#If/else; if (condition){do sth}
          # else {do sth}
#!= not equal
#==

a<-9
if (a< 10){print("it's less than 10")}

a<-11
if (a< 10){print("it's less than 10")} #no print output for this command

a<- 10

if (a< 10){print("it's less than 10")}else{print("it's more then or equal to ten")}

#x %% y	modulus (x mod y) 5%%2 is 1
#x %/% y	integer division 5%/%2 is 2

a <- 10
tell_odd <- function(x)if (a%%2 != "0"){print("it's odd")}else{print("it's not odd")} 

tell_odd(5)
tell_odd(6)


x <- c(5,6,7,8)
for(e in x)print(e)
#apply,supply,no loops#

#diedai#iteration
a<-10
i=0
while (a<10) {print(paste("lopp"),i)}
i=i+1 #this is an infinite one#

#to creat a finite one#





