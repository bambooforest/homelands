library(tidyverse)
library(maps)
library(geosphere)
library(viridis)

homelands <- read_csv('Wichmann_etal2010.csv')

ggplot(data=homelands, aes(x=longitude,y=latitude)) + 
  borders("world", colour="gray50", fill="gray50") + 
  geom_point() +
  scale_color_viridis(discrete = TRUE) +
  theme_bw() +
  xlab("Longitude") +
  ylab("Latitude")