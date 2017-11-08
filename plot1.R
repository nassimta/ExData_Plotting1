## Getting full dataset
dataFile <- "./Data/household_power_consumption.txt"
fulldata <- read.csv(dataFile, header=T, sep=';', na.strings="?", 
               nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
## Converting dates
fulldata$Date <- as.Date(fulldata$Date, format="%d/%m/%Y")

## Subsetting the data
subSetData <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

## Plot 1: Saving to file
png("plot1.png", width=480, height=480)
hist(subSetData$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()