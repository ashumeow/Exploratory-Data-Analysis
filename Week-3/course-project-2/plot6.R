# Loading ggplot2 library
library(ggplot2)

# Loading RDS
NEI <- readRDS("exp-data/summarySCC_PM25.rds")
NEI$year <- factor(NEI$year, levels = c('1999', '2002', '2005', '2008'))
SCC <- readRDS("exp-data/Source_Classification_Code.rds")

# Baltimore City, Maryland
MD.onroad <- subset(NEI, fips == '24510' & type == 'ON-ROAD')
# Los Angeles County, California
CA.onroad <- subset(NEI, fips == '06037' & type == 'ON-ROAD')

# Aggregation
# Baltimore City, Maryland
MD.DF <- aggregate(MD.onroad[, 'Emissions'], by = list(MD.onroad$year), sum)
colnames(MD.DF) <- c('year', 'Emissions')
MD.DF$City <- paste(rep('MD', 4))

# Aggregation
# Los Angeles County, California
CA.DF <- aggregate(CA.onroad[, 'Emissions'], by = list(CA.onroad$year), sum)
colnames(CA.DF) <- c('year', 'Emissions')
CA.DF$City <- paste(rep('CA', 4))
DF <- as.data.frame(rbind(MD.DF, CA.DF))

# Final results :)
png('exp-data/xxx-2/plot6.png')
ggplot(data = DF, aes(x = year, y = Emissions)) + geom_bar(aes(fill = year),stat = "identity") + guides(fill = F) + ggtitle('Total Emissions of Motor Vehicle Sources\nLos Angeles County, California vs. Baltimore City, Maryland') + ylab(expression('PM'[2.5])) + xlab('Year') + theme(legend.position = 'none') + facet_grid(. ~ City) + geom_text(aes(label = round(Emissions, 0), size = 1, hjust = 0.5, vjust = -1))
dev.off()