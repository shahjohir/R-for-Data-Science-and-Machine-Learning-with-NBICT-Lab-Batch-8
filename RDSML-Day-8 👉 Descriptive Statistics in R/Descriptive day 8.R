# Descriptive statistics by the psych package

install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport file data
install.packages("nycflights13")
attach(nycflights13::flights)

# lets look the first 6 records using the head () function
head(nycflights13::flights)

# To show the full data set
nycflights13::flights
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)
