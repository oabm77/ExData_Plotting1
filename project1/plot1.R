source("LoadData.R")
if(!"data" %in% ls(pos=".GlobalEnv")) {
  cat("***** Loading Data *****\n")
  data <- loadData()
}

par(mfrow = c(1,1))
hist(x=data$Global_active_power, xlab="Global Active Power (kilowatts)", col="red" ,main="Global Active Power")
dev.copy(device=png, file="plot1.png", width=480, height=480)
dev.off()