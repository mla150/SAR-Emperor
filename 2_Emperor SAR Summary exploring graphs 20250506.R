
#Creating Figure 4, which shows the average sum of the huddle areas at each colony

empe_sar_sumN <- as.data.frame(read.csv("D:\\empe_sar_summary_notes.csv"))
empe_sar_sumN$colony_size <- as.factor(empe_sar_sumN$colony_size)

#average huddle size calc
empe_sar_sumN$avghud <- mean(empe_sar_sumN$areamean)

#figure 4 in paper
ggplot(empe_sar_sumN, aes(x = colony, y = log(areasum))) +
  geom_boxplot() +
  theme_light()



unique(empe_sar$colony)
empe_sar$colony <- as.factor(empe_sar$colony)

#all colonies grouping (first by date then try by jday)
#creating  "empe_sar_summary_notes"
empe_sar_summary <- empe_sar %>%
                    group_by(colony, yyyymmdd) %>%
                    reframe(huddles = n(),
                            areasum = sum(area),
                            areamean = mean(area),
                            jday = mean(jday),
                            ycoordmean = mean(ycoord),
                            xcoordmean = mean(xcoord) %>%
                              unique()
                            )

view(empe_sar_summary)

#add "colony_ycoord"
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Atka Bay"] <- -70.61420
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Cape Crozier"] <- -77.46530
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Cape Roget"] <- -71.98820
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Cape Washington"] <- -74.63730
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Coulman Island"] <- -73.34830
empe_sar_summary$colony_ycoord[empe_sar_summary$colony == "Franklin Island"] <- -76.18730



#adding factor of colony size
empe_sar_summary$colony_size[empe_sar_summary$colony == "Atka Bay"] <- "medium"
empe_sar_summary$colony_size[empe_sar_summary$colony == "Cape Crozier"] <- "small"
empe_sar_summary$colony_size[empe_sar_summary$colony == "Cape Roget"] <- "medium"
empe_sar_summary$colony_size[empe_sar_summary$colony == "Cape Washington"] <- "large"
empe_sar_summary$colony_size[empe_sar_summary$colony == "Coulman Island"] <- "large"
empe_sar_summary$colony_size[empe_sar_summary$colony == "Franklin Island"] <- "medium"

empe_sar_summary$colony_size <- as.factor(empe_sar_summary$colony_size)

#date on x, area sum on y, by huddle size
ggplot(empe_sar_summary) +
  geom_point(mapping = aes(x = yyyymmdd, y = areasum, size = huddles)) +
  facet_wrap(~colony)


view(empe_sar)


