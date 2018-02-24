# read data
pm<-read.csv("household_power_consumption.txt",sep=";", stringsAsFactors = FALSE,
             colClasses=c(rep("character",2), rep("numeric",7)),na.strings = "?")
# select two days data
pm1<-subset(pm,Date=="1/2/2007" | Date=="2/2/2007")
rm(pm)

png(filename = "figure/plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12)
hist(pm1$Global_active_power,col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()