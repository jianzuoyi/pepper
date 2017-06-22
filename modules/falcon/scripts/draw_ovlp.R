#!/opt/bio/bin/Rscript

#1 保存结果图到pdf  
pdf(file="OvlpHist.pdf", width=15, height=18)

# 准备数据
library(ggplot2)
o<-read.table("ovlp.stats", header=F)
colnames(o)<-c("pread","length","fivePrimeOvlps","threePrimeOvlps")

# 画图
p <- ggplot(data=o,aes(x=fivePrimeOvlps))+
  
  geom_histogram(binwidth=1)
#p+xlim(0,300)
#p+scale_x_continuous(limits=c(1,300), breaks=10)
p+scale_x_continuous(breaks=seq(0,300,5), limits=c(0,300))

p <- ggplot(data=o,aes(x=threePrimeOvlps))+

  geom_histogram(binwidth=1)
#p+xlim(0,300)
#p+scale_x_continuous(limits=c(1,300), breaks=10)
p+scale_x_continuous(breaks=seq(0,300,5), limits=c(0,300))

#4 释放资源  
dev.off() 
