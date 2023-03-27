x#PE1
#https://wly.supernum.tech/2019/12/使用r语言绘制图形/#1-2-绘制线条
x=seq(-4,4,length=50)
y=(1/(2*pi))*exp(-(x^2)/2)
plot(x,y,ann=F,xlim=c(-4,4),ylim=c(0,0.16),type = "l",xaxt="n",yaxt="n",main = "p")
axis(side=2,at=c(0,0.04,0.08,0.12,0.16), tck=-0.05,labels=c("0.0","0.1","0.2","0.3","0.4"))
axis(side=1,at=c(-4,-2,0,2,4), tck=-0.05,labels=c("-4","-2","0","2","4"))
text(x=6.5, y=0.07,labels="A",cex=2)
title(main="N(0,1)",xlab="z",ylab ="dnorm(z)" ,line=2,cex=0.5)
segments(-2,-0.1,-2,0.05)
segments(2,-0.1,2,0.05)
arrows(-0.5,0.025,-2,0.025,length=0.1)
arrows(0.5,0.025,2,0.025,length=0.1)
text(x=0, y=0.025,labels="95%",cex=0.9)

#PE2
x=seq(-6,6,length=100)
x2=seq(-2.5*pi,1.5*pi,length=100)
plot(x,cos(x),ann=F,xlim=c(-2*pi,2*pi),ylim=c(-1,1),type = "l",xaxt="n",yaxt="n",main = "p",col="green")
lines(x2+0.5*pi,cos(x2),col="red")
#curve(sin,from = -6,to=6)
axis(side=2,at=c(-1,-0.5,0,0.5,1), tck=-0.05,labels=c("-1.0","-0.5","0.0","-0.5","1.0"))
axis(side=1,at=c(-6,-4,-2,0,2,4,6), tck=-0.05,labels=c("-6","-4","-2","0","2","4","6"))
abline(v=0,h=0,col="gray")
legend(x=3,y=1,legend=c("sin(x)","cos(x)"),col = c("red","green"),lty = 2,cex=0.6)
title(main="sin(x) and cos(x)",xlab="x",line=2,cex=0.1)
text(x=-2*pi, y=-0.1,labels="-2pi",cex=0.9)
text(x=-pi, y=-0.1,labels="-pi",cex=0.9)
text(x=0, y=-0.1,labels="0",cex=0.9)
text(x=pi, y=-0.1,labels="pi",cex=0.9)
text(x=2*pi, y=-0.1,labels="2pi",cex=0.9)

#PE3
x=seq(-6,6,length=100)
y=(1/(2*pi))*exp(-(x^2)/2)
plot(x,y,ann=F,xlim=c(-6,6),ylim=c(0,0.16),type = "l",xaxt="n",yaxt="n",main = "p",col="red")
axis(side=2,at=c(0,0.04,0.08,0.12,0.16), tck=-0.05,labels=c("0.0","0.1","0.2","0.3","0.4"))
axis(side=1,at=c(-4.2,-2.8,-1.4,0,1.4,2.8,4.2), tck=-0.05,labels=c("mu-3sigma","mu-2sigma","mu-sigma","mu","mu+sigma","mu+2sigma","mu+3sigma"))
title(main="Normal Distribution",ylab ="density" ,line=2.5,cex=0.5)
abline(v=c(-4.2,-2.8,-1.4,1.4,2.8,4.2),col="gray",lty=2)
arrows(c(-0.6,-0.6,-0.6),c(0.12,0.08,0.04),c(-1.4,-2.8,-4.2),c(0.12,0.08,0.04),length=0.1)
arrows(c(0.6,0.6,0.6),c(0.12,0.08,0.04),c(1.4,2.8,4.2),c(0.12,0.08,0.04),length=0.1)
text(x=c(0,0,0), y=c(0.04,0.08,0.12),labels=c("99.74%","95.44%","68.26"),cex=0.8)

#library(showtext)
font_add("heiti", "simhei.ttf")

x=seq(-pi,pi, by=0.001)
y=13*cos(x)-5*cos(2*x)-2*cos(3*x)-cos(4*x)
plot(16*(sin(x)^3),y,type = "l",bty="n",xaxt="n",yaxt="n",xlab = NA,ylab=NA)
polygon(x=16*(sin(x)^3),y=13*cos(x)-5*cos(2*x)-2*cos(3*x)-cos(4*x),col=rgb(1,0,0),border = NA)
text(x=0,y=2.5,labels="Mother's Day",cex=1.5,col="white")
text(x=0,y=0,labels="母親節快樂",cex=2,col="white",family="heiti")
text(x=0,y=-2.5,labels="May 10,2020",cex=1,col="white")
library(showtext)
font_add("heiti", "simhei.ttf")
text(0,0,label= "母親節快樂",col="white", cex = 4, family = "heiti")














