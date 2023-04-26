install.packages('tm')
install.packages('ggplot2')
install.packages('textreuse')
install.packages('devtools')
install.packages('NLP')
library('tm')
require('NLP')
library('tm')
setwd('C:/r-corpus/')
my.corpus<-Corpus(DirSource("C:/r-corpus"))
 my.corpus<-tm_map(my.corpus,removeWords,stopwords(kind = "english"))
my.tdm<-TermDocumentMatrix(my.corpus)
my.df<-as.data.frame(inspect(my.tdm))
barplot(as.matrix(my.tdm))
