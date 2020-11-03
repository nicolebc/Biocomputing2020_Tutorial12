setwd("~/Documents/Biocomputing2020_Tutorial12/")
dataset1 <- read.delim(file="Consumer_Spending.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
dataset2 <- read.delim(file="data.txt", sep = ",", header = TRUE, stringsAsFactors = FALSE)
library(ggplot2)

#Task 1
print(plot1 <- ggplot(dataset1, aes(x=Generation,y=Spending, color=Category, fill=Category))+
  geom_point()+
  geom_smooth(method = "lm", se= FALSE)+
  theme_bw()+
  xlab("Age Group")+
  ylab("% of Money Spent")+
  ggtitle("Generational Spending"))


#Task 2
##Bar plot of means of populations to show just the average value for each region
print(plot2 <- ggplot(dataset2, aes(x=region, y=observations, color=region))+
  geom_bar(stat="identity")+
  stat_summary(fun.y=mean, geom="bar")+
  theme_bw())

##Scatterplot of all observations to show whole range of obs and distribution per region
print(plot3 <- ggplot(dataset2, aes(x=region,y=observations, color=region, fill=region))+
        geom_point()+
        theme_bw()+
        xlab("Region")+
        ylab("Observations")+
        ggtitle("Observations per Region"))

