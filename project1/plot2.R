source("LoadData.R")
if(!"data" %in% ls(pos=".GlobalEnv")) {
  cat("***** Loading Data *****\n")
  data <- loadData()
}

Sys.setlocale(category = "LC_ALL", locale = "C")
data$DataTime <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow = c(1,1))
with(data, plot(DataTime, Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.copy(device=png, file="plot2.png", width=480, height=480)
dev.off()