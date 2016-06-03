#https://georeferenced.wordpress.com/2013/01/15/rwordcloud/

library(tm)
library(wordcloud)

Cloud <-Corpus (DirSource("E:/WordCloud/"))
inspect(Cloud)

Cloud1 <-tm_map(Cloud, stripWhitespace)
Cloud2 <-tm_map(Cloud1, removeWords, stopwords("english"))
Cloud3 <- tm_map(Cloud2, removePunctuation)

wordcloud(Cloud3)
