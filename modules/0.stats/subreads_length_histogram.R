#!/opt/bio/bin/Rscript
library(ggplot2)

df<-read.table("/its1/GB_BT2/jianzuoyi/workspace/pepper/output/subreads/subreads.merged.fa.length", header=F)
colnames(df)<-c("length","subreads")
#head(df)

p <- ggplot(data=df,aes(x=length)) + geom_histogram(binwidth=1)
p <- p + xlab("subreads length")
p <- p + scale_x_continuous(breaks=seq(0,20000,2000), limits=c(0,20000))
ggsave("subreads_length_histogram.pdf", plot=p, width=8, height=6)
