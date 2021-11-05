

# retrait des dates antérieures
databixi.f <- databixi.f[as.Date(databixi.f$start_date) > as.Date("2018-05-02"), ]

# retrait des dates postérieures
databixi.f <- databixi.f[as.Date(databixi.f$end_date) < as.Date("2018-08-02"), ]

# sélection des stations pertinents

databixi.f <- databixi.f[databixi.f$start_station_code %in% code, ]
