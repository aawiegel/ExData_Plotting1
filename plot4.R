## Creates four subplots

source('read_power_data.R')

power_data <- read_power_data('./data/household_power_consumption.txt')

png(file = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))


# Make Upper Left Plot
with(power_data, plot(Date_Time, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n"))

with(power_data, lines(Date_Time, Global_active_power))

# Make Upper Right Plot
with(power_data, plot(Date_Time, Voltage, xlab = "", ylab = "Voltage", type="n"))

with(power_data, lines(Date_Time, Voltage))

# Make Lower Left Plot
with(power_data, plot(Date_Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))

with(power_data, lines(Date_Time, Sub_metering_1, col = "black"))
with(power_data, lines(Date_Time, Sub_metering_2, col = "red"))
with(power_data, lines(Date_Time, Sub_metering_3, col = "blue"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col = c("black", "red", "blue"))

# Make Lower Right Plot
with(power_data, plot(Date_Time, Global_reactive_power, xlab = "", ylab = "Global Reactive Power", type="n"))

with(power_data, lines(Date_Time, Global_reactive_power))

dev.off()