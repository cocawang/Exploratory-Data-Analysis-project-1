house <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
test <- subset(house, Date =="1/2/2007"| Date =="2/2/2007")
test$Global_active_power <- as.numeric(test$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(test$Global_active_power, col = "red",
               main = paste("Global Active Power"),
               xlab = paste("Global Active Power (kilowatts)"), ylim = c(0, 1200), class =12)
dev.off


