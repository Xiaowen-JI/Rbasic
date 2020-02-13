install.packages("dplyr")
install.packages("rio")

data<-read.csv('Kazo_0.csv',stringsAsFactors = F) #donnot want string to be treated as factors
class (data)

str(data) #structures of all the variables
summary(data)
glimpse(data)
view (data)

nrow(data) #number of the row
colnames(data) # want only colomn names
names(data)
names(data$age)

class(data$age)
typeof(data$age)
#the same results

is.vector (data$age)
mean(data$age)

#or ag <- data$age, then donot need to repeat the object name each time 

HIV <- data$HIV


library(dplyr)
filter(data, HIV==1)
filter(data,male==1)
