
par(mfrow = c(2, 2))
## Top Left
plot( x= EPCdT$Datetime  , y=EPCdT$Global_active_power , type = "l",  ylab = "Global Active Power (kilowatts)", xlab="")
## Top Right
plot( x= EPCdT$Datetime  , y=EPCdT$Voltage , type = "l",  ylab = "Voltage", xlab="datetime")
## Bottom Left
plot(EPCdT$Datetime, EPCdT$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" ,  col = "black")
points(EPCdT$Datetime, EPCdT$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(EPCdT$Datetime, EPCdT$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend ("topright", legend=c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3"), lty = 1 , col = c("black" , "red", "blue"))
## Bottom Right
plot( x= EPCdT$Datetime  , y=EPCdT$Global_reactive_power , type = "l", ylab = "Global_reactive_power",   xlab="datetime")
