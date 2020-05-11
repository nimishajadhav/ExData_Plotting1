## Reading the dataset

dataFile <- "./Exploratory_analysis/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
colnames(data)

## Reading the subsets of 2007-02-01 and 2007-02-02 dates

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# plotting histogram

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
