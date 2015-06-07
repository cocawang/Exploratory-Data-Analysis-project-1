library(datasets)
house <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
test <- subset(house, Date =="1/2/2007"| Date =="2/2/2007")
test$Date <- as.Date(test$Date,"%d/%m/%Y")
test$daytime <- strptime(paste(test$Date,test$Time), "%Y-%m-%d %H:%M:%S")
test$Global_active_power <- as.numeric(test$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(test$daytime, test$Global_active_power, type = "l", xlab = "", ylab ="Global Active Power (kilowatts)" )
dev.off
