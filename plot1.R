# Exploratory Data Analysis, program assignment 1
# ExData_Plotting1, plot1.R

# Loading the Data
library(lubridate)
cons_Data <- read.csv("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
dim(consumption_Data)
#[1] 2075259      9

# subsetting two first days of February 2007:
cons_Data <- cons_Data[cons_Data$Date == "1/2/2007" | cons_Data$Date == "2/2/2007", ]

# Create Plot1.png of given resolution, plotting power cosumption histogramm, disconnecting the device:

png(file = "./ExData_Plotting1/Plot1.png", width=480, height=480, bg = "transparent")
hist(cons_Data$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()

# End of Plot 1