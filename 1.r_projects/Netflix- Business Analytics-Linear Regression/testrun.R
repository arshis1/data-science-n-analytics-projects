netflix.df <- read.csv("NetflixDatasetLatest2021.csv", stringsAsFactors = TRUE)
str(netflix.df)
View(netflix.df)


length(netflix.df$Director)

colSums(is.na(netflix.df)) 

#summary(netflix.df)

percent_null <- (colSums(is.na(netflix.df))/length(netflix.df$Director))*100
percent_null

df3 <- data.frame(unclass(table(df$id, df$period)))


test.df <- data.frame(colnames(netflix.df ), percent_null )

names(test.df)[1] <- 'Name'


sorted <- test.df[ order(test.df$percent_null), ]


sort(test.df, index.return= TRUE)


d <- sorted[-c(30,31), ]
d


p_null.df <- data.frame (percent_null)
colnames(p_null.df)

library (ggplot2)

ggplot(data = d) + geom_bar(fill=rgb(0.7,0.1,0.1,0.7),aes( x = d[,c(2)] , y = d[,c(1)]), , 
                            stat = "summary", fun = "mean") + labs(x ="Percentage of Null values", y ="Attribute Names")