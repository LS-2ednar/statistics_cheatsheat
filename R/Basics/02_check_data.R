# checking your data is crucial to do good analysis! Here some methods are shown
# install the mice packages to check your dataset for NA's and use md.pattern to
# find missing datapoints. IF you get all 1 and 0 below you are golden
install.packages('mice')
library(mice)
md.pattern(data)

# use str() to figure out if some parts of your data should be a factor or not
# then use as.factor() to change the values to a factor
data = morley
str(data)
data$Expt = as.factor(data$Expt)
str(data)


# depending on the data typ you can now choose to inspect the data further with 
# for example a boxplot to do that, use ggplot or build in boxplot() function.
# ggplot example
install.packages('ggplot2')
library(ggplot2)
ggplot(data = data, aes(Expt,Speed)) +
  geom_boxplot() + 
  stat_boxplot(geom = 'errorbar', width = 0.3)

# basic r example
boxplot(data$Speed~data$Expt)



# one can use a different approach
install.packages('sciplot')
library(sciplot) 
bargraph.CI(Expt, Speed, col = (gray(0.88)), data = data, xlab = "Experiment", ylab = "count", ylim = c(0,20))
# lineplot.CI(Expt, Speed, type = "p", data = data, xlab = "spray", ylab = "count", ylim = c(0,20))
