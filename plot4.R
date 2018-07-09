par(mfrow = c(2,2), mar=c(4,4,1,0), oma=c(0,0,0,0))

plot(sub_data$Global_active_power ~ sub_data$DateTime, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power", 
     main = "")

plot(sub_data$Voltage ~ sub_data$DateTime,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage", 
     main = "")

plot(sub_data$Sub_metering_1 ~ sub_data$DateTime,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering", 
     main = "")
lines(sub_data$Sub_metering_2 ~ sub_data$DateTime,
      type = "l",
      col = "red")
lines(sub_data$Sub_metering_3 ~ sub_data$DateTime,
      type = "l",
      col = "blue")
legend(x = "topright",
       col = c("black", "red", "blue"),
       lty = 1,
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       inset = c(-0.1, -0.1))

plot(sub_data$Global_reactive_power ~ sub_data$DateTime,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power", 
     main = "")

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()