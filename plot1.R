setwd("C:/Users/utente/Desktop/Learning/R Programming/Exploratory") ##setting the directory##
mydataset <- file("household_power_consumption.txt") ##storing the file in mydataset##
mydataset1 <- read.table(text = grep("^[1,2]/2/2007", readLines(mydataset), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep=";", header=TRUE) ##storing only the coloumns I am interested in in a mydataset1##  
hist(mydataset1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)") ##creating the histogram##
dev.copy(png, file="plot1.png", width=480, height=480, units='px') ##creating the png histogram
dev.off() 






