# read data
pm<-read.csv("household_power_consumption.txt",sep=";", stringsAsFactors = FALSE,
             colClasses=c(rep("character",2), rep("numeric",7)),na.strings = "?")
# select two days data
pm1<-subset(pm,Date=="1/2/2007" | Date=="2/2/2007")
rm(pm)
pm1<-cbind(pm1,DateAndTime=strptime(paste(pm1$Date,pm1$Time),"%d/%m/%Y %H:%M:%S"))
png(filename = "figure/plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12)
plot(pm1$DateAndTime, pm1$Global_active_power,
     type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()