# script to make plot1.png for programming assignment 1 in exploratory data analysis course
# https://github.com/stahlman/ExData_Plotting1

#read in data
data <- read.csv('household_power_consumption_reduced.txt', sep = ';', na.strings = '?')

#create output file
png(file="plot1.png",width=480, height=480)

#set background to transparent (default is white)
par(bg='transparent')

#draw plot
hist(data$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')

#save
dev.off()