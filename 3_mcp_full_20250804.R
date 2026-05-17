
#LOOKING AT HUDDLES AND AREAS PER COLONY THROUGH SEASON, MCP
#Creating Figure 6

#installing packages
install.packages("tidyverse")
install.packages("dplyr")
library(tidyverse)
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

#loading in csv file containing all data for huddle areas plus
#minimum convex polygon (MCP) analysis conducted in ArcGISPro
empe_mcp <- as.data.frame(read.csv("D:/empe_sar_summary_20250801.csv"))

#making colony and colony size factors
empe_mcp$colony <- as.factor(empe_mcp$colony)
empe_mcp$colony_size <- as.factor(empe_mcp$colony_size)

#loading dataset that collapses all areas per colony into a single MCP per colony
#analysis conducted in ArcGISPro
empe_dissolve2 <- as.data.frame(read.csv("D:/SAR Huddles 20250324/mcp_emperors_dissolve2.csv"))
empe_dissolve2$colony <- as.factor(empe_dissolve2$colony)

#correlation between huddle area and MCP per colony
cor.test(log(empe_mcp$areasum), log(empe_mcp$Area_m)) #correlated 0.65


#joining average colony size to empe_mcp
full <- merge.data.frame(empe_dissolve2, empe_mcp, by.x = "colony")


#tried a few different chart types for Figure 6
#figure 6 in SAR paper (original)
ggplot(empe_mcp) +
  geom_point(mapping = aes(x = log(Area_m), y = log(areasum), color = colony,
                           size = colony_size))

full = rename(full, MCP = Area_m)
full = rename(full, Huddle_Area = areasum)

#figure 6 again
ggplot(full) +
  geom_point(mapping = aes(x = log(MCP), y = log(Huddle_Area), color = colony,
                           size = 6)) 

#figure 6 CLASSIC THEME
ggplot(data = full, aes(x = log(MCP), y = log(Huddle_Area))) +
  geom_point(aes(colour = colony, size = 5)) +
  guides(size = "none") +
  theme_classic()

#figure 6 Theme Light
ggplot(data = full, aes(x = log(MCP), y = log(Huddle_Area))) +
  geom_point(aes(colour = colony, size = 5)) +
  guides(size = "none") +
  theme_light()

#figure 6 shape
ggplot(data = full, aes(x = log(MCP), y = log(Huddle_Area))) +
  geom_point(aes(shape = colony, size = 5)) +
  guides(size = "none") +
  theme_light()












  