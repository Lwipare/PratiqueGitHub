setwd("~/Documents/coursift1902/2018")

 station <- as.data.frame(read.csv("./Stations_2018.csv", fileEncoding = "UTF-8")[, c(1,2)])

station$code[grep("Rachel", station[, 2])]


