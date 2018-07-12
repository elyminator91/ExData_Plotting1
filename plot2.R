par(mfrow = c(1,1), mar=c(5.1,4.1,4.1,2.1), oma=c(0,0,0,0))

sub_data <- readr::read_delim("./sub_data.txt", delim = ";")

plot(sub_data$Global_active_power ~ sub_data$DateTime,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)", 
     main = "")

dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()