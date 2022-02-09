# Load libraries
# install.packages("leaflet")
library(leaflet)
library(data.table)

# Load data
d <- fread("demographics_plus_zip_info.csv")
zips <- as.matrix(d[1:10000, list(zip_longitude, zip_latitude)])

# Create map
map <- leaflet();
map <- addTiles(map); 
map <- addMarkers(map, data = zips, clusterOptions = markerClusterOptions());
map <- setView(map, lat= 43, lng= -79, zoom = 3); # North America
map


