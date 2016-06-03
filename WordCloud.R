#https://georeferenced.wordpress.com/2013/01/15/rwordcloud/

library(tm)
library(wordcloud)

Cloud <-Corpus (datafilename="https://raw.githubusercontent.com/cboosalis/WordCloud/ec399a07b904b0d933fdf476ad29ee410a9278cf/your_students.txt")
inspect(Cloud)

Cloud1 <-tm_map(Cloud, stripWhitespace)
Cloud2 <-tm_map(Cloud1, removeWords, stopwords("english"))
Cloud3 <- tm_map(Cloud2, removePunctuation)

wordcloud(Cloud3)
