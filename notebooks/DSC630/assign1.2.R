###
## 1. Import, Plot, Summarize, and Save Data
## Using the Bureau of Labor Statistics data, choose a dataset that interest you. Then generate summary statistics for 2 variables, plot some of the features (e.g., histograms, box plots, density plots, etc.) of several variables, and save the data locally as CSV files.
## 2. Explore Some Bivariate Relations
## Use the same dataset within the same website to explore some bivariate relations (e.g. bivariate plot, correlation, table cross table etc.)
## 3. Organize a Data Report
## Generate a summary report. Make sure to include: summary for every variable, structure and type of data elements, discuss four results of your data



---
title: "Stock Data Analysis"
author: "Arindam Samanta"
date: January 26 2020
output:
  
  word_document: default  
---  


```{r, echo = FALSE, warning = FALSE, message = FALSE}
library(readr)
library(dplyr)
library(plotly)
library(tidyverse)
library(highcharter)
library(viridis)
library(ggplot2) 

unemp <- read_csv("data/raw/unemp_county_usa.csv", header = TRUE)
# kable(unemp[1:5,1:5])

summary(unemp)

unemp%>%
  select(Year,State,Rate)%>%
  group_by(Year,State)%>%
  summarise(`Average`=mean(Rate))->Stat_wise_avgs_year

Stat_wise_avgs_year[1:10,]

#Annual unemployment rate for the US from 1990 to 2016
Annual.rate <- sapply(split(unemp.data$Rate, unemp.data$Year), mean)
Year = c(1990:2016)
plot(Year, Annual.rate,  main = "Annual mean US unemployment rate"); lines(Year, Annual.rate)
