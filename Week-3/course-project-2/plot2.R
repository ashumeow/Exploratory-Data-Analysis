# Loading RDS
ig <- readRDS("exp-data/summarySCC_PM25.rds")
SCC <- readRDS("exp-data/Source_Classification_Code.rds")

# Sampling data for testing
ig_sample <- ig[sample(nrow(ig), size = 5000, replace = F), ]

# Subsetting data and appending two years in one data frame
ig_play <- subset(ig, fips == '24510')

# Final results :)
png(filename = 'exp-data/xxx-2/plot2.png')
barplot(tapply(X = ig_play$Emissions, INDEX = ig_play$year, FUN = sum), main = 'Total Emission in Baltimore City, ig_play', xlab = 'Year', ylab = expression('PM'[2.5]))
dev.off()