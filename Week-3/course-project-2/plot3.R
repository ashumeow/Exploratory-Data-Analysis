# loading ggplot2
library(ggplot2)

# loading data
neiData <- readRDS("./exp-data/summarySCC_PM25.rds")
sccData <- readRDS("./exp-data/Source_Classification_Code.rds")

# Baltimore City, Maryland == fips
subset <- neiData[neiData$fips == "24510", ] 
par("mar"=c(5.1, 4.5, 4.1, 2.1))

# final results :)
png(filename = "./exp-data/xxx-2/plot3.png", width = 480, height = 480, units = "px")
g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") + ylab(expression('Total PM'[2.5]*" Emissions")) + ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()