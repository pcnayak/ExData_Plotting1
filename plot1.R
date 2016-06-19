EPCdataFile <-  file("exdata_data_household_power_consumption\\household_power_consumption.txt") 
EPCdT <- read.table(text=grep("^[1,2]/2/2007", readLines(EPCdataFile), value = TRUE),
                    sep = ";", 
                    header = TRUE, 
                    na.strings = "?",
                    col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
EPCdT$Datetime <- strptime(paste(EPCdT$Date, EPCdT$Time), "%d/%m/%Y %H:%M:%S")

hist(EPCdT$Global_active_power , col= "red" , xlab ="Global Active Power (kilowatts)" , main ="Global Active Power")
