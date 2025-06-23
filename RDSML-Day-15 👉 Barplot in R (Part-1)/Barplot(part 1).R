# Creating a data frame
dataset = data.frame(dose = c("D0.5", "D1", "D2"), len = c(4.2, 10, 29.5))


library(ggplot2)

# Basic barplot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")

# Horizontal bar plot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")+
  coord_flip()

# Changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", width = 0.5)

# Changing colors
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", color = "blue", fill ="white" , width = 0.5)

# Minimal theme + blue fill color
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  theme_minimal()

# Bar plot with labels
# Outside Bars
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#999999")+
  theme_minimal()

# Inside Bars
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "white")+
  theme_minimal()

mycarData = mtcars
View(mycarData)
# Barplot of counts
# To make a barplot of counts, we will use mtcars dataset
ggplot(data = mycarData, aes(x = factor(cyl)))+
  geom_bar(stat = "count", width = 0.7, fill= "steelblue") +
  theme_minimal()
 





