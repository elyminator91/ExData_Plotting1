par(mfrow = c(1,1), mar=c(5.1,4.1,4.1,2.1), oma=c(0,0,0,0))

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
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()