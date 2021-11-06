setwd("~/Documents/coursift1902/2018")


# définition de la fonction d'importation
import <- function(nom)
{
    databixi.f <- read.csv(
        nom,
        fileEncoding = "UTF-8",
        colClasses = c(
            start_date = "Date",
            start_station_code = "factor" ,
            end_date = "Date",
            end_station_code = "factor",
            is_member = "factor",
            duration_sec = "numeric"
        )
    )
}

# initialisation avec les données de mai 2018
databixi.f <- import("OD_2018-05.csv")


# Définition de la liste des dates
dates <- as.Date(c("2018-06-22", "2018-07-22", "2018-08-22"))

# routine d'importation et d'ajout à databixi.f
for (i in seq_along(dates))
{
    moisc <- substring(as.character(dates[i]), 6, 7)
    nom <- paste0("OD_2018-", moisc, ".csv")
    print(paste("Processing", nom))
    databixi <- import(nom)


    databixi.f <- rbind(databixi.f,databixi)
}

