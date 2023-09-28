library(ggplot2)

# Import dataset
bikes <- read.csv('bikeshare.csv')

# Understanding the Data
# Calling head, str, summary to see what preliminary data is.

# Temp v Count scatterplot
scatterTempCount <- ggplot(bikes, aes(x = temp, y = count)) +
  geom_point(aes(color = temp), alpha = 0.5)

print(scatterTempCount)

# DateTime v Count
# Convert bikes datetime column to POSIXct
bikes$datetime <- as.POSIXct(bikes$datetime)
timeCount <- ggplot(bikes, aes(x = datetime, y = count)) +
  geom_point(aes(color = temp)) +
  scale_color_continuous(low = 'green', high = 'red') +
  theme_bw()

print(timeCount)

# Conclusions
# Observed seasonality for winter and summer 

# Understanding correlation between Bike Count and Temp
cor(bikes$temp, bikes$count)

season.plot <- ggplot(bikes, aes(factor(season), count)) +
  geom_boxplot(aes(color = factor(season)))

print(season.plot)

# Shows that a line can't capture a non-linear relationship
# Growth of rental count is NOT DUE TO SEASON