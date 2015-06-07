plot4 <- function(){
  par(mfrow = c(2,2))
  plot(dfnew$timestamp, dfnew$Global_active_power, type="l", xlab="", ylab=" Global Active Power")
  plot(dfnew$timestamp, dfnew$Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(dfnew$timestamp, dfnew$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(dfnew$timestamp, dfnew$Sub_metering_3, col="blue")
  lines(dfnew$timestamp, dfnew$Sub_metering_2, col="red")
  legend("topright", col = c("black","red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= c(1,1), bty= "n", cex = .5)
  plot(dfnew$timestamp, dfnew$Global_reactive_power, type="l", xlab="datetime", ylab=" Global_reactive_power")
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
  cat("plot4.png has been saved to ",getwd())
}