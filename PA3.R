# PA3
# Juwan Burden
# 9/19/26
# Creating and adding rows and columns to a data frame

# Creating and displaying the data fram
employee.data <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005),
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = FALSE)
summary(employee.data)

# Adding a new column to the existing data frame
exempt_status <- c("Y", "N")
Exempt <- exempt_status[(employee.data$Salary < 50000) + 1]
employee.data <- cbind(employee.data, Exempt)
employee.data
str(employee.data)

# Adding a new row to the existing data frame
employee.data <- rbind(employee.data, c(1006, "Rogers", 55000, "Y"))
employee.data
