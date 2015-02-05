# script to make plot2.png for programming assignment 1 in exploratory data analysis course
# https://github.com/stahlman/ExData_Plotting1

#read in data
data <- read.csv('household_power_consumption_reduced.txt', sep = ';', na.strings = '?')

#convert two column date/time to POSIX
data$TimePOSIX <- strptime(paste(as.character(data$Date), as.character(data$Time)), format = '%d/%m/%Y %H:%M:%S')

#create output file
png(file="plot2.png",width=480, height=480)

#set background to transparent (default is white)
par(bg='transparent')

#draw plot
plot( data$TimePOSIX, data$Global_active_power, type = 'l', xlab = '', ylab='Global Active Power (kilowatts)', main='')

#save
dev.off()