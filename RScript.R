# import abalone.csv dataset
# load readr package, use read_csv()
# function from readr to import data
library(readr)
abalone <- read_csv("abalone.csv")

# get a glimpse of the data
# use glimpse() function from tibble package
library(tibble)
glimpse(abalone)

# load dplyr package
# select a few variables
# and get summary stats
library(dplyr)
abalone %>% 
  select(length, diameter, height) %>% 
  summary()

# load ggplot2 package
# make plot of number of rings by shellWeight
library(ggplot2)
ggplot(abalone, aes(shellWeight, rings, color=sex)) +
  geom_point() +
  facet_wrap(vars(sex)) +
  geom_smooth()

# Run simple linear regression and save model results
# Also save model coefficients from the `summary()` function 
# Then view regression model results

model1 <- lm(rings ~ shellWeight, data=abalone)
sum_model1 <- summary(model1)
sum_model1$coefficients

