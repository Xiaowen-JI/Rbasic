## Practice the following problem 

 

# in the same line, if already use < -, after we can use equal sign

# What is the sum of the first 1000 positive integers?
 x <- c(1:1000) 
 sum(x)
# or x <- 1:1000
# sum (1:1000)

#1. Use the function c to create a vector with the average high temperatures in January for
#Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto, which are 35, 88, 42, 84, 81, 
#and 30 degrees Fahrenheit. Call the object temp.

#citytemp <- matrix (c(35, 88, 42, 84, 81,30),ncol=1,byrow=TRUE)
colnames(citytemp) <- c('temp')
rownames(citytemp) <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
citytemp <- as.table(citytemp)
citytemp#

#lab in class#
data.frame (a=1:5,b=c('l','m','n','o','p'), s=c(2,3,6,7,8))
tem <- c(35, 88, 42, 84, 81,30)

#recycling: repeat short to match long


# Now create a vector with the city names and call the object city.
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
# Use the names function and the objects defined in the previous exercises to associate the temperature data with its corresponding city.
citytemp <- data.frame(city,tem)
# Use the [ and : operators to access the temperature of the first three cities on the list.
citytemp$tem[1:3]

             
# Use the [ operator to access the temperature of Paris and San Juan.
citytemp[c(3,5),]
#citytemp[row,col]#go back to whole data set in order to get pairs




                          
# Use the : operator to create a sequence of numbers  12,13,14,.....73

12:73
                          
# Create a vector containing all the positive odd numbers smaller than 100.
seq(1, 99, 2)
                          
# Create a vector of numbers that starts at 6, does not pass 55, and adds numbers in increments of 4/7: 6, 6 + 4/7, 6 + 8/7, and so on. How many numbers does the list have? Hint: use seq and length.

seq(6,55,4/7)
                         
# What is the class of the following object a <- seq(1, 10, 0.5)?
a <- seq(1, 10, 0.5)
class(a)
                            
#What is the class of the following object a <- seq(1, 10)?
a <- seq(1, 10)
class(a)
                            
# The class of class(a<-1) is numeric, not integer. 
# R defaults to numeric and to force an integer, you need to add the letter L. 
#Confirm that the class of 1L is integer.
a <-1L
class (a)
                          
# Define the following vector:x <- c("1", "3", "5") and coerce it to get integers.
x <- c("1", "3", "5")
class(x)
as.integer(x)

#  In the data frame you made in the second problem convert the temperature from Fahrenheit 
#to Celsius. The conversion is  
#C=5/9×( F −32)
citytemp$tem <- 5/9(citytemp$tem-32)




