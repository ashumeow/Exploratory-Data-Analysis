# Loading RDS
ig <- readRDS("exp-data/summarySCC_PM25.rds")
SCC <- readRDS("exp-data/Source_Classification_Code.rds")

# Sampling data for testing
ig_sample <- ig[sample(nrow(ig), size = 1000, replace = F), ]

# Aggregation
Emissions <- aggregate(ig[, 'Emissions'], by = list(ig$year), FUN = sum)
Emissions$PM <- round(Emissions[, 2] / 1000, 2)

# Results :)
png(filename = "exp-data/xxx-2/plot1.png")
barplot(Emissions$PM, names.arg = Emissions$Group.1, main = expression('Total Emission of PM'[2.5]), xlab = 'Year', ylab = expression(paste('PM', ''[2.5], ' in Kilotons')))
dev.off()