# Installing and loading ggplot2
# install.packages("ggplot2")
library(ggplot2)

# Loading a dataset
dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()
  
# Changing the point shape and size
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size = 2, shape = 10)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size = 2, shape = 10) + 
  geom_smooth()
  
