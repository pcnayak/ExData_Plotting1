plot(EPCdT$Datetime, EPCdT$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" ,  col = "black")
points(EPCdT$Datetime, EPCdT$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(EPCdT$Datetime, EPCdT$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend ("topright", legend=c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3"), lty = 1 , col = c("black" , "red", "blue"))
