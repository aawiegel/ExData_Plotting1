## Plots global active power versus time

source('read_power_data.R')

power_data <- read_power_data('./data/household_power_consumption.txt')

png(file = "plot2.png", width = 480, height = 480)

with(power_data, plot(Date_Time, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n"))

with(power_data, lines(Date_Time, Global_active_power))


dev.off()