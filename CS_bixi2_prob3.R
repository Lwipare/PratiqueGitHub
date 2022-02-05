## Fonction que produit un sous-ensemble du tableau
## de données selon le dates de départ, fin et
## vecteur de code de stations choisies.

getRentals <- function(data, start, end, code)
{
    # retrait des dates antérieures et postérieures

    data <- data[as.Date(data$start_date) >= as.Date(start),]
    data <- data[as.Date(data$end_date) <= as.Date(end),]

    # sélection des stations pertinents
    data <- data[data$start_station_code %in% code,]
}


