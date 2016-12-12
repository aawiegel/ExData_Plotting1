## Reads in subset of power data that goes from the 1st of February to the 2nd
## of February in 2007.

library(tidyr)

read_power_data <- function(filename) {
     # Reads in column names
     
     column_names <- read.table(filename, sep=";", nrows=1)
     
     # Reads in subset of data from 1/2/2007 to 2/2/2007
     
     power_data <- read.table(filename, sep=";", na.strings="?", skip=66637, nrows=2880, col.names=unlist(column_names))
     
     # Merges date and time columns
     power_data <- unite(power_data, Date_Time, Date, Time, remove = TRUE)
     
     # Converts date and time strings to time format
     power_data$Date_Time <- strptime(power_data$Date_Time, format="%d/%m/%Y_%H:%M:%S")
     
     # Returns power data
     power_data
}