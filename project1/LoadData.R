loadData <- function() {
  myDataFile <- file.choose()
  data <- read.table(file=myDataFile,header=TRUE, sep=";", na.strings="?")
  data$Date<-as.Date(data$Date, format="%d/%m/%Y")
  subset(data, data$Date=="2007-02-01" | data$Date=="2007-02-02")
}