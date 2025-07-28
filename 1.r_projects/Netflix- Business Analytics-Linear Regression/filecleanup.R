netflix.df<- read.csv("NetflixDatasetLatest2021_v1.csv")


#-Add NA at null-------------------------------------------------------------
data_new2 <- netflix.df                                   # Duplicate data frame
data_new2[data_new2 == "" | data_new2 == " "] <- NA  # Replace blank & space by NA
data_new2    


counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)



#Top Rated Genres


table (data_new2$Genre)

tab1 <-data.frame(table(data_new2[,c(2)]))

ggplot(data_new2, aes(fill=data_new2$Series.or.Movie, x=data_new2$Genre, x=tab1)) + 
  geom_bar(position="stack", stat="identity")


order(tab1[,c(2)])

new.df <- tab1[order(tab1[,c(2)]),]

ggplot(data = new.df ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( y = new.df[,c(1)] , x = new.df[,c(2)]), 
                                stat = "summary", fun = "mean") +labs ( x = "Total Count", y ="Genre")

##Genres by the IMDB Ratings

rate_tab <- data.frame(table(data_new2$IMDb.Score))

data_new2$IMDbScore_Grouping <- cut(data_new2$IMDb.Score, breaks=c(0,5, 7, 8.5,10), right = FALSE)

table(data_new2$IMDbScore_Grouping)

ggplot(data = data_new2 ) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7), aes( x = data_new2$Release.Year , fill = data_new2$Series.or.Movie), 
                                stat = "summary", fun = "mean") +labs ( y = "Total Count", x = "Type")

#ggplot(data = data_new2 ) +    geom_point (aes(x=IMDb.Score, y=IMDbScore_Grouping, color = Series.or.Movie)) +
 # labs ( y = "Genre", x = "IMDb Score")

table(data_new2$Release.Year)


ggplot(data = data_new2 ) + geom_bar( aes( x = data_new2[, c(2)]  , 
                                           fill=IMDbScore_Grouping ))  +labs ( y = "Count", x ="Genre") +   coord_flip()  








  lan_tab1 <-data.frame(table(netflix.df$Languages))

for(i in 1:length(netflix.df$Languages)) {
  l <- sapply(strsplit(netflix.df$Languages[i], " "), length) > 1 
  if(l) {
    netflix.df$
  
  ggplot(data = data_new2 ) + 
    geom_point(aes(x = data_new2$IMDb.Score , y = data_new2$Rotten.Tomatoes.Score, color = data_new2$Genre ))  


    ggplot(data = data_new2 ) + 
      geom_point(aes(x = data_new2$IMDb.Score , y = data_new2$Hidden.Gem.Score, color = data_new2$Release.Year ))  
    
    
    
    



Languages[i] <- "Multiple"
  } 
}



