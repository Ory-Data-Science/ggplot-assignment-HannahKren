#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here

#plot one
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") + geom_point()

#plot two
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y ="Newborn Mass") +
  scale_x_log() + scale_y_log() +
  geom_point()

#plot three
ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) +
  labs(x = "Adult Mass", y ="Newborn Mass") +
  scale_x_log() + scale_y_log() + geom_point()

#plot four
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y ="Newborn Mass") +
  scale_x_log10() + scale_y_log10() + geom_point() +
  facet_wrap(~order, nrow = 4, ncol = 5)

#plot five 
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") +
  scale_x_log10() + scale_y_log10() + geom_point() +
  geom_smooth(method = "lm")+
  facet_wrap(~order, nrow = 4,ncol = 5)

