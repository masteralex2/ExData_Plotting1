Data <- read.table ("household_power_consumption.txt", sep=";", header=TRUE)
Data$Date2 <- as.Date(Data$Date, "%d/%m/%Y")
DF <-   subset(Data, Date2 >= as.Date("01/02/2007", "%d/%m/%Y") & Date2 <= as.Date("02/02/2007", "%d/%m/%Y") )
DF$WeekDay <- format(DF$Date2, "%a")
DF$WeekDay <- as.factor(DF$WeekDay)
DF$Global_active_power <- as.numeric(DF$Global_active_power)
par(mfrow = c(1,1))
png("plot1.png")
hist(DF$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
