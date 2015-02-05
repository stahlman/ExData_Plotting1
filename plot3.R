# script to make plot3.png for programming assignment 1 in exploratory data analysis course
# https://github.com/stahlman/ExData_Plotting1

#read in data
data <- read.csv('household_power_consumption_reduced.txt', sep = ';', na.strings = '?')

#convert two column date/time to POSIX
data$TimePOSIX <- strptime(paste(as.character(data$Date), as.character(data$Time)), format = '%d/%m/%Y %H:%M:%S')

#create output file
png(file="plot3.png",width=480, height=480)

#set background to transparent (default is white)
par(bg='transparent')

#draw plot
plot( data$TimePOSIX, data$Sub_metering_1, type = 'l', xlab = '', ylab='Energy sub metering', main='')
lines(data$TimePOSIX, data$Sub_metering_2, type = 'l', col='red')
lines(data$TimePOSIX, data$Sub_metering_3, type = 'l', col='blue')

#add legend
legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       lty=1, col=c('black','red','blue'))

#save
dev.off()