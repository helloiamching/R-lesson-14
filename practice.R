#EA 
#https://www.twblogs.net/a/5b7fafbd2b717767c6b10180
#bty 邊框 l=左＋下 n= 無
#xaxt yaxt=n 去掉座標
#axis 加上＆調整座標軸
#polygon 多邊形 注意連續型函數要用c裡面要用:或者直接用seq
#text 添加文字 http://www.biye5u.com/article/R/2018/6381.html
#,xaxt="n",yaxt="n"
x=seq(0,11,length=50)
y=((x^1)*exp((-1)*x/2))/(2^2)*2
plot(x,y,ann=F,xlim=c(0,10),ylim=c(0,0.4),type = "l",bty="n",xaxt="n",yaxt="n")
axis(side=2,at=c(0,0.08,0.16,0.24,0.32,0.40), tck=-0.05,labels=c("","","","","",""))
axis(side=1,at=c(0,5,11), tck=-0.05,labels=c("0","x",""))
n=c(5:11)
polygon(x=c(5,5,n,11),y=c(0,((5^1)*exp((-1)*5/2))/(2^2)*2,((n^1)*exp((-1)*n/2))/(2^2)*2,0),density = 20, angle =50 )
text(x=8, y=0.3,labels="A=P(x^2>=x)")
text(x=6.5, y=0.07,labels="A",cex=2)
title(tylab ="Chisquare Density" ,line=2,cex=0.5)

#EB
x=seq(-4,4,0.01)
y=((x^2)-1)^2
plot(x,y^(1/3),type="l",xlim = c(-4,4),ylim = c(-2,8),col="blue",ylab="")
lines(x,2*(((x^2)-1)^2)^(1/3),col="red")
abline(v=0,h=0,col="gray")
legend(x=-1,y=8,legend=c("α=1","α=2"),col = c("blue","red"),lty = 2,cex=0.6)
title(ylab ="f(x,aplha=1)" ,line=2.5,cex=0.5)



#EC
#legend 用來加圖標
x=seq(-pi,pi,length=50)
y=sin(x)
plot(x,y=sin(x),xlim=c(-pi,pi),ylim=c(-1.2,1.8),type="l",lty=2,col=3)
lines(x,y=cos(x),pch=3,type="b",col=4)
lines(x,y=tan(x),pch=4,type="b",col=6)
#legend
legend(x=-1,y=1.9,legend=c("sin","cos","tan"),col = c("3","4","6"),lty = 2,cex=0.6)



#Exercise D
curve(1-x^2,0,1,ylab="",xlab="",main="uppersum")
for (i in 0:3) {
  a=0+i*0.25
  b=1-(i*0.25)^2
  c=1/4+i*0.25
  segments(a,b,c)
}
for (i in 0:4) {
  a=0.25+i*0.25
  b=0
  c=1/4+i*0.25
  segments(a,b,a,1-(i*0.25)^2)
}

#E
x=seq(-10,10, by=0.1)
y=1/((2*pi)^(1/2))*exp(-(x^2)/2)
plot(x+1,y,type = "l",bty="n",xaxt="n",yaxt="n",xlim = c(-4,4),ylim = c(0,0.6),xlab = NA,ylab=NA)
lines(x-1,y)
lines(x=c(0.6,0.6),y=c(0,0.4),lty=2)
n=seq(-10,0.6,by=0.1)
m=seq(0.6,10,by=0.1)
polygon(x=c(-10,n,0.6,0.6),y=c(0,1/((2*pi)^(1/2))*exp(-((n-1)^2)/2),1/((2*pi)^(1/2))*exp(-((0.6-1)^2)/2),0),col=rgb(1,1,0,0.5),border = NA)
polygon(x=c(0.6,0.6,m,10),y=c(0,1/((2*pi)^(1/2))*exp(-((0.6-1)^2)/2),1/((2*pi)^(1/2))*exp(-((m-1)^2)/2),0),col=rgb(0,0.5,1,0.5),border = NA)
polygon(x=c(0.6,0.6,m,10),y=c(0,1/((2*pi)^(1/2))*exp(-((0.6+1)^2)/2),1/((2*pi)^(1/2))*exp(-((m+1)^2)/2),0),col=rgb(0,0.9,0,0.5),border = NA)
text(x=0,y=0.46,labels="Statistical Power Plots, Textbook-style",cex=0.5)
text(x=-1,y=0.41,labels = "H0",cex=0.4)
text(x=1,y=0.41,labels = "Ha",cex=0.4)

#week13


