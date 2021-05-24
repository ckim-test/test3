library(data.table)
library(stringr)

# lat/lon computation
station <- fread("example/data/stations.csv")
station$'전철역명' <- ifelse(str_detect(station$'전철역명', "역"), station$'전철역명', paste0(station$'전철역명',"역"))
station_latlon <- mutate_geocode(station, 전철역명)



save.image(file="example/data/station_latlon.RData")