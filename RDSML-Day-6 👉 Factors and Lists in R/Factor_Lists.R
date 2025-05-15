# Factors in R

# Summary of numeric items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# Finding summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession)
profession

profession = factor(profession)
summary(profession)

# Putting the summary in order
birth_month = c("Jan", "Dec", "Apr", "Aug", "Jan", "Mar", "Jun", "Apr", "Jul", "Aug", "Sep", "Apr", "Oct", "July", "Sep")
summary(birth_month)
birth_month_fact = factor(birth_month, order = TRUE, levels = c("Jan", "Feb", "Mar"))
summary(birth_month_fact)

# Lists in R
# Lists sre used to place of items in a bundle
a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "Welcome!"

ny_list = list (a, b, c)
ny_list

# Naming the list items
ny_list = list(pieces = a, colors = b, Message = c)
ny_list
# Calling a specific data structure
ny_list['colors']

# Calling Specific items from the data structure
ny_list$clors[2]



