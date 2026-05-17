#tidying SAR huddle data
#install tidyverse and dyplr
install.packages("tidyverse")
install.packages("dplyr")

library(tidyverse)
library(dplyr)

#loading csv file containing the areas of delineated huddles (derived from shapefile)
empe_sar <- as.data.frame(read.csv("C:/Users/mla150/OneDrive - University of Canterbury/RSEC SAR Emperor Paper 2026/SAR-Emperor/sar_huddles_20250502.csv"))

#add column for site_id
#empe_sar <- empe_sar %>% mutate("site_id"=NA)
unique(empe_sar$colony)
empe_sar$site_id[empe_sar$colony=="Atka Bay"]<-"ATKA"
empe_sar$site_id[empe_sar$colony=="Coulman Island"]<-"COUL"
empe_sar$site_id[empe_sar$colony=="Cape Roget"]<-"ROGE"
empe_sar$site_id[empe_sar$colony=="Cape Washington"]<-"WASH"
empe_sar$site_id[empe_sar$colony=="Franklin Island"]<-"FRAN"
empe_sar$site_id[empe_sar$colony=="Cape Crozier"]<-"CROZ"

#make site id factor
empe_sar$site_id <- as.factor(empe_sar$site_id)

#make bird present 0 or 1
empe_sar$b_pres1[empe_sar$b_pres=="yes"] <- 1
empe_sar$b_pres1[empe_sar$b_pres=="no"] <- 0

#make birds present (0 or 1) factor
empe_sar$b_pres1 <- as.factor(empe_sar$b_pres1)

#need a column with yyyymmdd
empe_sar$yyyymmdd <- paste(empe_sar$image)
#want to keep first 10 characters, remove the rest
empe_sar$yyyymmdd <- substr(empe_sar$yyyymmdd, 1, 10)

#need a column with time
empe_sar$hhmmss <- paste(empe_sar$image)
#remove first 11 characters, keep 12 through 19
empe_sar$hhmmss <- substr(empe_sar$hhmmss, 12, 19)


#need to convert yyyymmdd to date
library(lubridate)
empe_sar$yyyymmdd <- ymd(empe_sar$yyyymmdd)

#then convert to Julian day
empe_sar$jday <- as.Date(empe_sar$yyyymmdd, format = "%y%m%d")
empe_sar$jday <- format(empe_sar$jday, "%j")
empe_sar$jday <- as.numeric(empe_sar$jday)

#checking unique Julian days
unique(empe_sar$jday)

#want to create month column
#keeps 6th character to the 7th character, removes the rest
empe_sar$month <- substr(empe_sar$yyyymmdd, 6, 7)

empe_sar$month[empe_sar$month=="03"]<-"March"
empe_sar$month[empe_sar$month=="04"]<-"April"
empe_sar$month[empe_sar$month=="05"]<-"May"
empe_sar$month[empe_sar$month=="06"]<-"June"
empe_sar$month[empe_sar$month=="07"]<-"July"
empe_sar$month[empe_sar$month=="08"]<-"August"
empe_sar$month[empe_sar$month=="09"]<-"September"
empe_sar$month[empe_sar$month=="10"]<-"October"

unique(empe_sar$month)
#month as a factor
empe_sar$month <- as.factor(empe_sar$month)
#bin dates by week
empe_sar$week <- strftime(empe_sar$yyyymmdd, format = "%V")
empe_sar$week <- as.integer(empe_sar$week)

unique(empe_sar$week) 
unique(empe_sar$ycoord)

#tidied dataset
view(empe_sar)






