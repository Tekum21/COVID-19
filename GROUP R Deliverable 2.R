library(readxl)

maryland_history <- read_excel("D:/fall 2020/750 data analytics/group project/maryland-history.xlsx")
print (maryland_history)

# ggplot bar chart
library("ggplot2")  # Data visualization
options(scipen = 999) 
ggplot(data= maryland_history, aes(x= date , y= positiveCasesViral ,color = date ,fill = date)) +
  geom_bar(stat='identity', width=0.4) +
  labs(x = "Month",
       y = "positiveCasesViral",
       title = "Positivecases",
       subtitle = "Maryland USA")



#plot the data using ggplot scatterplot
casefatalityratio = (maryland_history$deathConfirmed/(maryland_history$deathConfirmed+maryland_history$recovered))*100
print (casefatalityratio)
library("ggplot2")  # Data visualization
options(scipen = 999)
ggplot(data = maryland_history, aes(x = date, y = casefatalityratio)) +
  geom_point() +  
  geom_point(colour = "Red", size = 1) +  
  labs(x = "Month",
       y = "casefatalityratio",
       title = "casefatalityratio",
       subtitle = "Maryland USA")




# a scatter plot with a smoothed line and vertical x-axis labels
library('gridExtra')
library('grid')
library('ggplot2')
options(scipen = 999)

plot1 <- ggplot(maryland_history, aes(x=date, y=deathConfirmed)) +
         geom_point() + geom_smooth() +
         xlab('') + ylab('Count') + labs(title='Deaths confirmed') +
         theme(axis.text.x=element_text(angle=45, hjust=1))
plot2 <- ggplot(maryland_history, aes(x=date, y=hospitalized)) +
         geom_point() + geom_smooth() +
         xlab('') + ylab('Count') + labs(title='hospitalized') +
         theme(axis.text.x=element_text(angle=45, hjust=1))
# show two plots together, with 2 plots in each row
grid.arrange(plot1, plot2, nrow=1)




#pie chart deathcase
maryland_history$dataQualityGrade = NULL
maryland_history[is.na(maryland_history)] = 0
total_dth= sum(maryland_history$death)
postv_nodth = sum(maryland_history$positive) - total_dth
slices_dthcase = c(postv_nodth,total_dth)
lbls_dthcase = c("COVID Survivors","COVID Deaths")
pct = round(slices_dthcase/sum(slices_dthcase)*100)
lbls_dthcase = paste(lbls_dthcase, pct)
lbls_dthcase = paste(lbls_dthcase,"%",sep="")
cols= c("cornflowerblue","blue1","red")
pie(slices_dthcase, labels=lbls_dthcase, main="Percentage of Positive COVID cases who \n Survived and Died", col=cols)

#pie chart hospitalized recovered
crrnt_hosp= maryland_history$hospitalizedCurrently[1]
total_hosp = maryland_history$hospitalizedCumulative[1] - crrnt_hosp
rcvrd = maryland_history$recovered[1]
slices_hosprecover = c(total_hosp,rcvrd,crrnt_hosp)
lbls_hosprecover = c("Hospitalized", "Recovered", "Currently in Hospital")
pct_h = round(slices_hosprecover/sum(slices_hosprecover)*100)
lbls_hosprecover = paste(lbls_hosprecover,pct_h)
lbls_hosprecover = paste(lbls_hosprecover ,"%", sep=" ")
cols2= c("cornflowerblue","blue1","blue4")
pie(slices_hosprecover, labels=lbls_hosprecover, main="Percentage of COVID Patients \n Hospitalized, Recovered, and Currently Hospitalized", col=cols2)




#boxplots positives by month
date = as.Date(maryland_history$date,format="%m/%d/%y")
maryland_history["Month"] = months(date)
pos_mon = data.frame(maryland_history$positive,maryland_history$Month)

maryland_history$Month = factor(maryland_history$Month, levels = c("March","April","May","June","July","August","September","October"))
boxplot(positive~Month, data=maryland_history, main="Postive Cases by Month",xlab = "Month",ylab = "Total Positive Cases",col="cadetblue1",border="blue")
boxplot(positiveIncrease~Month, data=maryland_history, main="Positive Increase by Month",xlab = "Month",ylab = "Total Positive Cases",col="cadetblue1",border="blue")


