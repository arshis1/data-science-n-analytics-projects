#Data Frames

x.df <- read.csv("toy_example.csv")

x.df



x.df[2,1]
x.df[3,1]
x.df[2,]
x.df[,3]
x.df[2:3,]
x.df[,"xNum"]
x.df["xNum"]

x.df[2, c("xNum", "xLog")]

names(x.df) # column Name

View(x.df) # display the Df

str(x.df)  #description of the data frame : name, data type



a <- c(1,2,3,4)
min(a)

max(x.df$xNum)

sum(a)

sex_vector <- c("Male", "Female", "Female", "Male", "Male")

#categorical data 

factor_sex_vector <-factor(sex_vector)

sex_vector
factor_sex_vector
levels(factor_sex_vector)

summary(sex_vector)
summary(factor_sex_vector)



