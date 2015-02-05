curl https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip -o exdata_data_household_power_consumption.zip

tar -xvf  exdata_data_household_power_consumption.zip

grep '^1/2/2007\|^2/2/2007' household_power_consumption.txt > household_power_consumption_reduced.txt
