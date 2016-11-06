#loading data into my_file variable
my_file <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
myfile1 <-my_file[my_file$Date %in% c("1/2/2007","2/2/2007"),]


#Preparing variables 



Sub_metering_1 <- as.numeric(subSetData$Sub_metering_1)
Sub_metering_2 <- as.numeric(subSetData$Sub_metering_2)
Sub_metering_3 <- as.numeric(subSetData$Sub_metering_3)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(subSetData$Global_active_power)
Global_reactive_power <- as.numeric(subSetData$Global_reactive_power)
Voltage <- as.numeric(subSetData$Voltage)

#plotting preparation starts here
png("plot4.png", width=500, height=500)
par(mfrow = c(2, 2)) 
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=4, col=c("black", "red", "blue"), bty="o")

plot(datetime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
#plotting ends
dev.off()










