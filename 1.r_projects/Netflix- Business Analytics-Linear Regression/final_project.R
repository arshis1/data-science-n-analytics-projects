moviepred.df<- read.csv("NetflixDatasetLatest2021.csv")

#View(moviepred.df$Genre)
#View(moviepred.df$Series.Or.Movie)
#install.packages("tm")
library(tm)
#corp <- Corpus(VectorSource(movie_pred$Genre))
#inspect(corp)

#1 Count of type
library(ggplot2)

tab2 <-data.frame(table(moviepred.df$View.Rating))
tab2
ggplot(data = tab1 ) + 
 geom_point(aes(x = tab1[,c(1)] , y = tab1[,c(2)] ))

ggplot(data = tab1 ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( x = tab1[,c(1)] , y = tab1[,c(2)]), 
                               stat = "summary", fun = "mean") +labs ( y = "Total Count", x = "Type")


ggplot(data = tab1 ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( x = tab1[,c(1)] , y = tab1[,c(2)]), 
                                stat = "summary", fun = "mean") +labs ( y = "Total Count", x = "Type")

###############################
#2 count of the Ratings
install.packages("knitr")
install.packages("recommenderlab")


library(dplyr)
library(ggplot2)
library(knitr)
library(recommenderlab)


vector_ratings <- as.vector(moviepred.df$View.Rating)
kable(table(vector_ratings), caption="Rating frequency")

vector_ratings = vector_ratings[vector_ratings != " "]
hist(vector_ratings, main="Histogram of Ratings", xlab="Rating Value")


###############
install.packages("plotly")
library(plotly)
library(dplyr)
library(tidyr)
library(lubridate)



head(moviepred.df)


ggplot(data = moviepred.df ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( x = moviepred.df$View.Rating))
                                            
df1<- table(moviepred.df$View.Rating)

ggplot(data = tab1 ) + geom_bar(aes( x = tab1[,c(1)] , y = tab1[,c(2)]), 
                                stat = "summary", fun = "mean")


pie <- ggplot(moviepred.df, aes(x = "", fill = factor(View.Rating))) + 
  geom_bar(width = 1) +
  theme(axis.line = element_blank(), 
        plot.title = element_text(hjust=0.5,size=22)) + 
  labs(fill="class", 
       x=NULL, 
       y=NULL, 
       title="Pie Chart of Netflix shows")

pie + coord_polar(theta = "y", start=0)

pie + scale_fill_brewer(palette="Reds")+
  theme_minimal()

pie + scale_fill_grey() + theme_minimal()


library(RColorBrewer)
myPalette <- brewer.pal(5, "Set2") 

pie(moviepred.df$View.Rating , border="white", col=myPalette )


#########gradient
# Number of intervals to subdivide - increase for finer detail
n <- 41 
# Generate colours
cols <- colorRampPalette(c("red", "black"))(n) 

# Plot
# lty=0 removes the section lines, which also removes outer border
pie(c(1,2, rep(1/n, n)), col=c("red","white", cols) , lty=0,
    labels=c(1,2, rep("", n/2), 3))

# Add in outer circle back in
# radius=0.8 used as this is the pie default
plotrix::draw.circle( 0,0, 0.8)


#2  


#install.packages("sqldf")
#library(dplyr)
#library(sqldf)

#read.csv.sql(NetflixDatasetLatest2021.csv, sql = "select * from file", header = TRUE, sep = ",",
 #            row.names, eol, skip, filter, nrows, field.types,
  #           colClasses, dbname = tempfile(), drv = "SQLite", ...)



#sqldf("select * from moviepred.df")









colnames(moviepred.df)



filter(type=='Movie'& release_year<="2020-02-01" & release_year>="2000-01-01") %>% 
  mutate(movie_duration=substr(duration,1,nchar(as.character(duration))-4)) %>% 
  mutate(movie_duration = as.integer(movie_duration)) %>% 
  group_by(release_year) %>% 
  summarise(avg_run = mean(movie_duration)) %>% 
  ggplot(aes(x=release_year,y=avg_run)) +
  geom_line()




df1_complete <- na.omit(moviepred.df$View.Rating)



ggplot(data = moviepred.df ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( 
  y = df1_complete))


