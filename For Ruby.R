# Load packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(lubridate, tidyr, dplyr, sf, stats19, tidyverse, data.table, zoo, parallel, foreach, readxl, readr,qs, downloader, googlesheets4, googledrive, openxlsx, gargle)
remotes::install_github("ropensci/stats19")

cas.df <- stats19::get_stats19(year = 1979, type = "casualty", format = TRUE)
cas.df <- subset(cas.df, cas.df$collision_year >= 1979 & cas.df$collision_year <= max(cas.df$collision_year))

cas.df <- as.data.table(cas.df)
cas.df <- cas.df[, c("sex_of_casualty", "casualty_distance_banding", "lsoa_of_casualty", "age_band_of_casualty", "pedestrian_location",
                     "pedestrian_movement", "enhanced_casualty_severity", "bus_or_coach_passenger", "casualty_imd_decile", 
                     "pedestrian_road_maintenance_worker", "collision_ref_no", "vehicle_reference", "casualty_reference", 
                     "casualty_class", "casualty_type", "car_passenger"):=NULL]
cas.df <- cas.df[is.na(casualty_adjusted_severity_serious) & casualty_severity == "Fatal", casualty_adjusted_severity_serious:=0]
cas.df <- cas.df[is.na(casualty_adjusted_severity_slight) & casualty_severity == "Fatal", casualty_adjusted_severity_slight:=0]
