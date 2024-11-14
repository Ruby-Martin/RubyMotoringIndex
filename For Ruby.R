# Load packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(lubridate, 
               tidyr,
               dplyr,
               sf,
               stats19,
               tidyverse,
               data.table,
               zoo,
               parallel,
               foreach,
               readxl,
               readr,
               qs,
               downloader,
               googlesheets4,
               googledrive,
               openxlsx,
               gargle)

remotes::install_github("ropensci/stats19")

# Load data and make three large DFs
severity.link <- "https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-casualty-adjustment-lookup_2004-latest-published-year.csv"

options(timeout=10000)

downloader::download(severity.link, "severity.csv")
rm(severity.link)

severity <- read_csv("severity.csv")
min.year.of.study <- as.numeric(min(severity$accident_year))
max.year.of.study <- as.numeric(max(severity$accident_year))
severity$acc_cas <- paste0(severity$accident_index, "_", severity$vehicle_reference, "_", severity$casualty_reference)
severity$injury_based <- NULL
severity$accident_reference <- NULL
severity$accident_year <- NULL

df <- stats19::get_stats19(year = 1979, type = "cas", format = TRUE)

cas.df <- df
cas.df$sex_of_casualty <- NULL
cas.df$casualty_distance_banding <- NULL
cas.df$lsoa_of_casualty <- NULL
cas.df$age_band_of_casualty <- NULL
cas.df$pedestrian_location <- NULL
cas.df$pedestrian_movement <- NULL
cas.df$enhanced_casualty_severity <- NULL
cas.df$acc_cas <- paste0(cas.df$accident_index, "_", cas.df$vehicle_reference, "_", cas.df$casualty_reference)
cas.df <- left_join(cas.df, severity[,4:6], by = "acc_cas")
cas.df$adjusted_serious[cas.df$casualty_severity == "Fatal" & is.na(cas.df$adjusted_serious)] <- 0
cas.df$adjusted_slight[cas.df$casualty_severity == "Fatal" & is.na(cas.df$adjusted_slight)] <- 0
cas.df$casualty_imd_decile <- NULL
cas.df$bus_or_coach_passenger <- NULL
cas.df$casualty_home_area_type <- NULL
cas.df$pedestrian_road_maintenance_worker <- NULL
cas.df$accident_reference <- NULL
cas.df$vehicle_reference <- NULL
cas.df$casualty_reference <- NULL
cas.df$casualty_class <- NULL
cas.df$casualty_type <- NULL
cas.df$car_passenger <- NULL


fwrite(cas.df, "CSV/casdf.csv")