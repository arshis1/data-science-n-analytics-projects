#install.packages("ggplot2")
library(ggplot2)

View(mpg)
#aesthetic mappings
ggplot(data = mpg ) + 
  geom_point(aes(x = displ, y= hwy, color = class))+ 
  labs ( y = "highway miles per gallon")



#----------------
mower.df <- read.csv("RidingMowers.csv")
#a
head(mower.df)
View(mower.df)
#b
ggplot(data = mower.df ) + 
  geom_point(aes(x = Lot_Size , y = Income ))
#c
ggplot(data = mower.df ) + 
  geom_point(aes(y = Lot_Size , x = Income , color =  Ownership ))

#bar chart
ggplot(data = mpg ) + geom_bar(aes( x= class))


ggplot(data = mpg ) + geom_bar(aes( x= class, y = hwy), 
                               stat = "summary", fun = "mean")


#-------------

ggplot(data = mower.df ) + 
  geom_bar(aes(x = Ownership, y = Income), 
           stat = "summary", fun = "mean")

#------box plot --distribution

ggplot(data = mpg ) + geom_boxplot(aes( x= class, y = hwy))


#----------histogram

ggplot(data = mpg ) + geom_histogram(aes( x= cty), bins = 10)


#Boston Housing
housing.df <- read.csv("BostonHousing.csv")
View(housing.df)

ggplot(data = housing.df ) + 
  geom_point(aes(x = LSTAT, y= MEDV))

ggplot(data = housing.df ) + 
  geom_bar(aes(y = MEDV , x= factor(CHAS)), 
           stat = "summary", fun = "mean")

ggplot(data = housing.df ) + 
  geom_histogram(aes( x= MEDV ), bins = 10)

ggplot(data = housing.df  ) + 
  geom_boxplot(aes( x= factor(CHAS), y = MEDV ))


ggplot(data = housing.df  ) + 
  geom_boxplot(aes( x= CAT..MEDV, y = NOX ))

ggplot(data = housing.df  ) + 
  geom_boxplot(aes( x= CAT..MEDV, y = PTRATIO  ))
