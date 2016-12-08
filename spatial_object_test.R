# creating a spatial object
# -- assigning lat-lon coordinates to a spatial object

#   http://stackoverflow.com/questions/29736577/how-to-convert-data-frame-to-spatial-coordinates


mydf <- structure(list(longitude = c(128.6979, 153.0046, 104.3261, 124.9019, 
                                     126.7328, 153.2439, 142.8673, 152.689), 
                       latitude = c(-7.4197, -4.7089, -6.7541, 4.7817, 2.1643, 
                                    -5.65, 23.3882, -5.571)), 
                  .Names = c("longitude", "latitude"), 
                  class = "data.frame", 
                  row.names = c(NA, -8L))


### Get long and lat from your data.frame. Make sure that the order is in lon/lat.

xy <- mydf[,c(1,2)]

spdf <- SpatialPointsDataFrame(coords = xy, data = mydf,
                               proj4string = 
                                 CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))


