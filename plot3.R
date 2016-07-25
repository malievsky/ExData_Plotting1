# Exploratory Data Analysis, program assignment 1
# ExData_Plotting1, plot1.R

# Loading the Data
library(lubridate)
cons_Data <- read.csv("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
dim(consumption_Data)
#[1] 2075259      9

# subsetting two first days of February 2007:
cons_Data <- cons_Data[cons_Data$Date == "1/2/2007" | cons_Data$Date == "2/2/2007", ]
dim(cons_Data)
#[1] 2880    9


# Create Plot3.png of given resolution, plotting graph (typ = "l") in fixed y limits (0 to 40), 
# adding days labels to axis 1 (X) and disconnecting the device:

png(file = "./ExData_Plotting1/Plot3.png", width=480, height=480, bg = "transparent")
plot(cons_Data$Sub_metering_1, xaxt = "n", ylim = c(0, 40), xlab = "", ylab = "Energy sub metering", typ = "l")
axis(1, at = seq(1, 2881, by=1440), labels = c("Thu", "Fri", "Sat"))
par(new = TRUE)
plot(cons_Data$Sub_metering_2, xaxt = "n", ylim = c(0, 40), xlab = "", ylab = "", typ = "l", col = "red")
par(new = TRUE)
plot(cons_Data$Sub_metering_3, xaxt = "n", ylim = c(0, 40), xlab = "", ylab = "", typ = "l", col = "blue")
legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

# End of Plot 1



