# script to make plot4.png for programming assignment 1 in exploratory data analysis course
# https://github.com/stahlman/ExData_Plotting1

#read in data
data <- read.csv('household_power_consumption_reduced.txt', sep = ';', na.strings = '?')

#convert two column date/time to POSIX
data$TimePOSIX <- strptime(paste(as.character(data$Date), as.character(data$Time)), format = '%d/%m/%Y %H:%M:%S')

#create output file
png(file="plot4.png",width=480, height=480)

#set background to transparent (default is white)
par(bg='transparent')

#prepare canvas to have 4 plots
par(mfrow = c(2,2))

#draw 1st plot
plot( data$TimePOSIX, data$Global_active_power, type = 'l', xlab = '', ylab='Global Active Power', main='')

#draw 2nd plot
plot( data$TimePOSIX, data$Voltage, type = 'l', xlab = 'datetime', ylab='Voltage')

#draw 3rd plot
plot( data$TimePOSIX, data$Sub_metering_1, type = 'l', xlab = '', ylab='Energy sub metering', main='')
lines(data$TimePOSIX, data$Sub_metering_2, type = 'l', col='red')
lines(data$TimePOSIX, data$Sub_metering_3, type = 'l', col='blue')
#add legend
legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       bty='n',lty=1, col=c('black','red','blue'))

#draw 4th plot
plot( data$TimePOSIX, data$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')


#save
dev.off()