power <- read.table("C:\Users\Dell\Downloads\household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
#here i am calling the plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
# here i am annotating graph
title(main="Global Active Power")
# here i am copying to png
dev.copy(png, filename="plot1.png")
dev.off()
