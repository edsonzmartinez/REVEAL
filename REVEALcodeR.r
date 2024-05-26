##################################################################################
# REVEAL
# Researchers’ Enhanced Visualization for Effective Analysis and Lexicalization
# Update: 25/05/2024
#
#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load meta and metafor libraries
library(meta)
library(metafor)
#For each of the inputs:
#The vector of the “success” observed in each input data
y <- c(10,30,5,10,8,2,20,30)
#The vector of sample sizes
n <- c(30,100,40,70,30,10,90,90)
#Meta-analysis of proportions
mtprop <- metaprop(event=y, n=n, sm = "PFT")
#Showing the results
summary(mtprop)
#Forest plot
forest(mtprop)
#Create Baujat plot
baujat(mtprop, bty="l", las=1)
#Meta-analysis of proportions removing the input 4
mtprop2 <- metaprop(event=y[-4], n=n[-4], studlab=(1:8)[-4], sm = "PFT")
#Forest plot
forest(mtprop2)
#Meta-analysis of proportions removing the input 8
mtprop3 <- metaprop(event=y[-8], n=n[-8], sm = "PFT")
#Forest plot
forest(mtprop3)


