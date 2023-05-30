# https://ropensci.org/blog/2018/03/06/weathercan/
# weathercan is an R package designed to make it easy to access historical 
# weather data from Environment and Climate Change Canada (ECCC)
#### Load Packages ####
# Data manipulation and plotting
library(dplyr)
library(ggplot2)

# Checking data completeness
library(naniar)

# Spatial analyses
library(sf)
library(mapview)

# install.packages("C:/pc/weathercan_0.6.2.tar.gz", repos = NULL, type="source")
library(weathercan)

#### Find All available stations in Quebec with end year >= 2018 ####
STATIONS=stations()
mb <- filter(STATIONS, 
             prov == "QC",
             interval == "day",
             end >= 2018) %>%
  select(, -climate_id, -WMO_id, -TC_id)
mb

##### Find nearby stations to the FERLD ####
FERLD <- stations_search(coords = c(48.51267813023192, -79.36865929968056), 
                         interval = "day", dist = 50) %>%
  select(-prov, -climate_id, -WMO_id, -TC_id) %>%
  filter(end >= 2018)
FERLD

#### Download data for nearby stations to the FERLD ####
mb_weather_all <- weather_dl(station_ids = FERLD$station_id,
                             start = "2018-01-01", 
                             interval = "day", quiet = TRUE)
mb_weather <- select(mb_weather_all,
                     station_id, lat, lon,
                     date, min_temp, mean_temp, max_temp,
                     total_precip, total_snow)

#### See available data ####
mb_weather %>%
  filter(station_id %in% FERLD$station_id) %>%
  gg_miss_var(show_pct = TRUE, facet = station_id) + 
  labs(title = "Site A: Stations < 25 km")



