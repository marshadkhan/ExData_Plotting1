#file loading starts here
my_file <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
myfile1 <-my_file[my_file$Date %in% c("1/2/2007","2/2/2007"),]
Global_active_power <-as.numeric(myfile1$Global_active_power)
#variable starts here
datetime <- strptime(paste(myfile1$Date, myfile1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
#plotting starts here
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()