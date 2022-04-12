#----------------------------Question 1 ------------------------------------#
#Write an R program to create three vectors a, b, c with 5 integers. 
#Combine the three vectors to become a 3×5 matrix where each column represents 
#a vector. Print the content of the matrix. Plot a graph and label correctly.
#create matrix
data <- (matrix(1:5, nrow = 3, ncol = 5, dimnames = list(c("A", "B", "C"), c(1, 2, 3, 4, 5))))
#print matrix
data
#plot the matrix data
matplot(t(data), type = "l",
        lwd = 2,
        main="Graphing of Matrix",
        ylab = "Values")

#----------------------------Question 2 ------------------------------------#
#2. Write a R program to create a Data frame which contain details of 5 
#employees and display the details. (Name, Age, Role and Length of service).
#create dataframe with employee details
employee_details <- data.frame(employeeName = c("Anna", "Bill", "Charlie", "Devon", "Elliot"),
                               employeeAge = c(20,23,25,26,30),
                               employeeRole = c("receptionist","receptionist","accountant","legal","accountant"),
                               lengthOfServiceYears = c(2,2,1,5,10))

#----------------------------Question 3 ------------------------------------#
#3. Import the GGPLOT 2 library and plot a graph using the qplot function. 
#X axis is the sequence of 1:20 and the y axis is the x ^ 2. 
#Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)
#install and load packages
install.packages("ggplot2")
library(ggplot2)
#create dataframe
question_3 <- data.frame(number = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
                     y_axis = c(1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,324,361,400))
#plot dataframe in line graph
ggplot(data = question_3, aes(x=number, y=y_axis))+
  geom_line()

#----------------------------Question 4 ------------------------------------#
#4. Create a simple bar plot of five subjects
#create dataframe
five_subjects <- data.frame(subject = c("maths", "biology", "chemistry", "economics", "art"),
                            numberOfStudents = c(30,25,32,20,15))
#plot dataframe in bar graph
ggplot(data = five_subjects, aes(x=subject, y=numberOfStudents))+
  geom_bar(stat = "identity")

#----------------------------Question 5 ------------------------------------#
#Write a R program to take input from the user (name and age) and display the values.
#prompt user to input information
user_name <- readline(prompt="Enter name: ")
user_age <- readline(prompt="Enter age: ")
# convert character into integer
user_age <- as.integer(user_age)
#print out outcome
print(paste("Hi,", user_name, "you are", user_age, "years old."))

#----------------------------Question 6 ------------------------------------#
#Write a R program to create a sequence of numbers from 20 to 50 and 
#find the mean of numbers from 20 to 50 and sum of numbers.
#generate sequence of numbers
numbers <- 20:50
#find the mean and sum of numbers
mean(numbers)
sum(numbers)

#----------------------------Question 7 ------------------------------------#
#Write a R program to create a vector which contains 10 random integer values 
#between -50 and +50
#randomly generate 10 integers and output
runif(10, min=-50, max=+50)
