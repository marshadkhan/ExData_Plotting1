#Below is my code for PlotNo1
#loading a file into my_file variable and limiting the result set
my_file <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
myfile1 <-my_file[my_file$Date %in% c("1/2/2007","2/2/2007"),]
Global_active_power <-as.numeric(myfile1$Global_active_power)
#plotting the graph on Device
png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

