Power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- Power[Power$Date %in% c("1/2/2007","2/2/2007"), ]
timeanddate <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(timeanddate, globalActivePower, type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.off()
