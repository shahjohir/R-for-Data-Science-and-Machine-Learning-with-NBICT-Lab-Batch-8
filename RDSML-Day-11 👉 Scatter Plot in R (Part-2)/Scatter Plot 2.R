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
  geom_point(size = 1, shape = 18) + 
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()+
  geom_smooth(method = lm, se = FALSE)

# Loess method
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()+
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size = 1, shape = 18) + 
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkblue")
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size = 1, shape = 18) + 
  geom_smooth(method = lm, linetype = "dotted",
              color = "darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size = 1, shape = 18) + 
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkblue", fill = "blue")


# Converting the cyl colum from numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# Changing the point shapes and colors
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, colour = cyl)) +
  geom_point()

# Changing the point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, colour = cyl, size = cyl)) +
  geom_point()
ggplot(dataset, aes(x = wt, y = mpg, colour = cyl, size = cyl)) +
  geom_point()
