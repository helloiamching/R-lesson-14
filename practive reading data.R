file.path <- "/Users/wang.c/Desktop/1101 homework/R/data.txt"
datasimple = read.table(file.path,header = T, sep = "\t",na.strings = "NA",fill = T, row.names = 1)
newdatatime <- strptime(datasimple$Date,"%Y/%m/%d" )



filepath_datairis <- "/Users/wang.c/Desktop/1101 homework/R/iris-data1.txt"
datairis <-read.table("/Users/wang.c/Desktop/1101 homework/R/iris-data1.txt")
datairis <- scan(file = "/Users/wang.c/Desktop/1101 homework/R/iris-data1.txt",what = list("list"=numeric(0),"Sepal Length"=numeric(0),"Sepal.Width"=numeric(0),"Petal.Width"=numeric(0),"Sepal Length"=numeric(0),Species="character") ,skip=1)
newdatairis = as.data.frame(datairis)
newdatairis
#arrange data (scan) <- u need to give the head to data !

dataexchanegerate <- read.csv("/Users/wang.c/Desktop/1101 homework/R/exchange_rate.csv")
newdatadate <- strptime(dataexchanegerate$Data.Date,"%Y%m%d")
mean(dataexchanegerate$Spot)
#plot(x=dataexchanegerate$Rate ,y=dataexchanegerate$Data.Date)

#output
write.table(datasimple,"/Users/wang.c/Desktop/1101 homework/R/datasimple.txt",col.names = T)

#重新分組recode

install.packages("car")
library("carData")
library("car")
x=c(1,2,3,1,2,3,1,2,3)
recode(x,"c(1,2)='A';ellse='B'")

