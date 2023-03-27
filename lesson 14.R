edu = c("國小","國中","高中","大學","碩士以上")
subject = seq(1:100)
id=1:100
degree = sample(edu,100,replace=T)
degree2 = factor(degree,levels=c("國小","國中","高中","大學","碩士以上"))
#class(degree)=character
#class(degree2)=factor
str(degree2)
idcorrect=order(degree2)
correctdata=sort(degree2)
data=data.frame(idcorrect,correctdata)

#practice
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%
set.seed(1234567)
n <- 60
ID <-sample(1:n)
gender <- sample(c("男","女"),n,replace = T)
concent<-sample(c("非常不同意","不同意","普通","同意","非常同意"),n,replace = T,prob = c(0.1,0.1,0.2,0.4,0.3))

gender2 <- factor(gender)
concent2 <- factor(concent,levels = c("非常不同意","不同意","普通","同意","非常同意"))
summary(gender2)
nlevels(gender2)

survey.df <- data.frame(gender2,concent2)
head(survey.df)

###
temp = (concent=="非常不同意"|concent=="不同意")
newdata = survey.df[temp,]
newdata 
###
answer <- which(survey.df$concent=="非常不同意"|concent=="不同意")
length(answer)






