#load libraries #############################

library(ggplot2) #loads plotting package that follows grammar of graphics
library(scales) #helps to scale variables
library(Scale) #helps to scale variables
library(grid)  #prints grids of ggplot objects
library(dplyr) #helps to manipulate data


##### set working directory ###############################


setwd("C:/Users/915712257/Desktop/helping Liz with R")

rm(list =ls())

# dates of interest time bounds
r1 <-  "1989-12-30 00:00:00"
r2 <- "1991-01-01 00:00:00"

#loads RData file from data directory  folder
load("data/farallon.climate.RData") 

#time bounds of data
head(df1) 
#1983-01-01

tail(df1)
#2019-12-01

# get brief statistical summary of data variables using format "data$var"

summary(df1$SEFI_SSS_mean)
summary(df1$SEFI_SST_mean)

# type ?ggplot in command line below or any of called functions to 
# learn more about how they work

#creates ggplot object p with desired data
# arguments for ggplot are (data, aes(X,Y))

p = ggplot(df1, aes(YearMo, SEFI_SST_mean)) 

# creates ggplot object a2 with p plus a line and many options
# the + operator below adds new objects and allows for a new line 
# for tidiness

#plotting temperature

ga1 = p + geom_line(aes(), size = 0.25, color = "red") +
  xlab(" ") + # left blank, last x label sets the time axis label
  ylab("SEFI Temps")+ #sets y axis label
  scale_x_datetime(labels=date_format("%m"), breaks = date_breaks("1 month"), expand=c(0,0)) +
  xlim(c(as.POSIXct(r1, format = "%Y-%m-%d %H:%M:%S"),
         as.POSIXct(r2, format = "%Y-%m-%d %H:%M:%S"))) +
  ylim(10, 16) + # sets y data limits
  theme_minimal() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.25), 
        panel.grid.minor = element_line(colour = "grey", size = 0.25), 
        axis.title.x=element_blank(), #blanks out x-axis title
        axis.text.x=element_blank(), #blanks out x-axis text
        axis.text.y = element_text(size = 5),
        axis.ticks.x=element_blank(), 
        axis.title.y = element_text(size =10,lineheight=3))

print(a1)


#plotting salinity

p = ggplot(df1, aes(YearMo, SEFI_SSS_mean))

a2 = p + geom_line(aes(), size = 0.25, color = "seagreen") +
  xlab("1990") + #last x label sets the x-axis label 
  ylab("SEFI Sal")+ 
  scale_x_datetime(labels=date_format("%m"), breaks = date_breaks("1 month"), expand=c(0,0)) +
  xlim(c(as.POSIXct(r1, format = "%Y-%m-%d %H:%M:%S"),
         as.POSIXct(r2, format = "%Y-%m-%d %H:%M:%S"))) +
  ylim(32, 35) +
  theme_minimal() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.25), 
        panel.grid.minor = element_line(colour = "grey", size = 0.25), 
        axis.title.x= element_text(size =10,lineheight=3), #x-axis kept
        axis.text.x= element_text(size =5),
        axis.text.y = element_text(size = 5),
        axis.ticks.x=element_blank(), 
        axis.title.y = element_text(size =10,lineheight=3))

print(a2)



#the following plots aligned time series into one .png with 4K HD aspect ratios as defined with width and height

# ggsave saves the object
# grid.draw() organizes the objects
# size = "last" snaps all objects together with correct date formatting

# the plot saved below saves a .png with objects a1 and a2 in order
# a2 has the correct labeling settings 
# so if you add any variables copy that plot format and make it the bottom

ggsave("plots/1990_S_T.png",
       plot = grid.draw(rbind(ggplotGrob(a1), ggplotGrob(a2), size = "last")),
       width = 6.65, height = 3.5)


#scrap code that could be used to add in more plots

# ggsave("plots/Apr_2019_event/Apr_2019_3ssts_2.1.png",
#        plot = grid.draw(rbind(ggplotGrob(a2), ggplotGrob(a6), ggplotGrob(a5),
#                               size = "last")),
#        width = 6.65, height = 3.5)



