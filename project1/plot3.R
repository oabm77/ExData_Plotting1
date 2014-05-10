source("LoadData.R")
if(!"data" %in% ls(pos=".GlobalEnv")) {
  cat("***** Loading Data *****\n")
  data <- loadData()
}


Sys.setlocale(category = "LC_ALL", locale = "C")
data$DataTime <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow = c(1,1))
with(data, plot(DataTime, Sub_metering_1, type = "l", xlab="", ylab="Energy Sub metering"))
with(data, lines(DataTime, Sub_metering_2, col="red"))
with(data, lines(DataTime, Sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = "solid", cex = 0.7, y.intersp=0.5)
dev.copy(device=png, file="plot3.png", width=480, height=480)
dev.off()
