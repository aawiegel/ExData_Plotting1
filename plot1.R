## Plots a histogram of the global active power

source('read_power_data.R')

power_data <- read_power_data('./data/household_power_consumption.txt')

png(file = "plot1.png", width = 480, height = 480)

hist(power_data$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")

dev.off()