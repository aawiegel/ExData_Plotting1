## Plots Energy Sub Metering vs time

source('read_power_data.R')

power_data <- read_power_data('./data/household_power_consumption.txt')

png(file = "plot3.png", width = 480, height = 480)

with(power_data, plot(Date_Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))

with(power_data, lines(Date_Time, Sub_metering_1, col = "black"))
with(power_data, lines(Date_Time, Sub_metering_2, col = "red"))
with(power_data, lines(Date_Time, Sub_metering_3, col = "blue"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col = c("black", "red", "blue"))


dev.off()