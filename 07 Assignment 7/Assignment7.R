setwd("D:/Docs/Sandeep/Colleges/Lambton/Term 2/2018S-T2 BDM 1053 - 
Big Data Algorithms and Statistics 01/Assignments/07 Assignment 7/")
library(ggplot2)
library(RColorBrewer)

data(diamonds)

typeof(diamonds$cut)
View(colors())

windows()

#Question1

library("RcmdrPlugin.KMggplot2", lib.loc="~/R/win-library/3.5")
df_diamonds = diamonds

#Question 2

View(mtcars)

#dim(mtcars)
value = seq(1,32)
#print(a)
#Line Plots
ggplot(mtcars) + geom_line(aes(x = value, y = mpg, colour = "mpg")) +
  geom_line(aes(x = value, y = cyl, colour = "cyl")) + 
  geom_line(aes(x = value, y = gear, colour = "gear")) + 
  labs(title = "mtcars Visualization - Line Plot", x ="Value", y = 
         "cyl, gear, mpg") +
  theme(panel.background = element_rect(fill = "springgreen"), 
        plot.background = element_rect(fill = "yellow2"))


#Scatter Plots
ggplot(mtcars) + geom_point(aes(mpg,cyl, colour = "mpg vs cyl")) + 
  geom_point(aes(mpg,am, colour = "mpg vs am")) +
  geom_point(aes(mpg, gear, colour = "mpg vs gear")) +
  labs(title = "mtcars Visualization - Scatter Plot", x = "mpg", y = 
         "cyl, gear, mpg")+
  theme(panel.background = element_rect(fill = "springgreen"), 
        plot.background = element_rect(fill = "yellow2"))


#Scatter plot matrices
plotmatrix(mtcars[, c(1,2,9,10)], colour = "species")
pairs(mtcars[, c(1,2,9,10)], col = "sandybrown", main = "mtcars 
      Visualization - Scatter Plot Matrix") +
  theme(panel.background = element_rect(fill = "springgreen"), 
        plot.background = element_rect(fill = "yellow2"))+ 
  labs(title = "mtcars Visualization - Scatter Plot Matrix")

#Pie Chart
library(plotrix)
pie3D(x = table(mtcars$cyl), labels = c(8,4,6), explode = 0.2, main = 
        "mtcars Visualization - 3D Plot", sub = "Number of Cylinders vs 
      Vehicle Count")+
  theme(panel.background = element_rect(fill = "springgreen"), 
        plot.background = element_rect(fill = "yellow2"))

#Bar Plot
ggplot(mtcars) + geom_histogram(aes(x = mpg), binwidth = 2, boundary 
                                = 20, colour = "black", fill = "cyan") +
  facet_wrap(~cyl) +
  theme(panel.background = element_rect(fill = "springgreen"), 
        plot.background = element_rect(fill = "yellow2")) + 
  labs(title = "mtcars Visualization - Bar Plot [No. of Cylinders 
       with mpg]", x ="mpg", y = "Count", sub = "abc")


#Question 3


View(VADeaths)

df = data.frame(VADeaths)
histA = ggplot(df) + geom_histogram(aes(x = Rural.Male),  colour = 
                                      "black", fill = "red")
histB = ggplot(df) + geom_histogram(aes(x = Rural.Female), colour = 
                                      "black", fill = "cyan")
histC = ggplot(df) + geom_histogram(aes(x = Urban.Male), colour = 
                                      "black", fill = "blue")
histD = ggplot(df) + geom_histogram(aes(x = Urban.Female), colour = 
                                      "black", fill = "pink")

library(cowplot)

plot_grid(histA,histB, histC, histD)


