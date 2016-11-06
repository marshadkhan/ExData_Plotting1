#loading files
my_file <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
myfile1 <-my_file[my_file$Date %in% c("1/2/2007","2/2/2007"),]
#varaible starts here
Sub_metering_1 <-as.numeric(myfile1$Sub_metering_1) 
Sub_metering_2 <-as.numeric(myfile1$Sub_metering_2) 
Sub_metering_3 <-as.numeric(myfile1$Sub_metering_3) 

datetime <- strptime(paste(myfile1$Date, myfile1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=500, height=500)
#plotting starts here
plot(datetime,Sub_metering_1, type="l", col="black",ylab="Energy Submetering", xlab="")
lines(datetime,Sub_metering_2, type="l", col="red")
lines(datetime,Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()