#library(jsonlite)

#dff <- data.frame(address=c(
 # "Birmingham, Alabama, United States",
  #"Mobile, Alabama, United States",
  #"Phoenix, Arizona, United States",
  #"Tucson, Arizona, United States",
  #"Little Rock, Arkansas, United States",
  #"Berkeley, California, United States",
  #"Duarte, California, United States",
  #"Encinitas, California, United States",
  #"La Jolla, California, United States",
  #"Los Angeles, California, United States",
  #"Orange, California, United States",
  #"Redwood City, California, United States",
  #"Sacramento, California, United States",
  #"San Francisco, California, United States",
  #"Stanford, California, United States",
  #"Hartford, Connecticut, United States",
  #"New Haven, Connecticut, United States"
#))


#geo.dsk <- function(addr){ # single address geocode with data sciences toolkit
  #require(httr)
  #require(rjson)
  #url      <- "http://www.datasciencetoolkit.org/maps/api/geocode/json"
  #response <- GET(url,query=list(sensor="FALSE",address=addr))
  #json <- fromJSON(content(response,type="text"))
  #loc  <- json['results'][[1]][[1]]$geometry$location
  #return(c(address=addr,long=loc$lng, lat= loc$lat))
#}
#result <- do.call(rbind,lapply(as.character(dff$address),geo.dsk))
#result <- data.frame(result)
#result

###############################################

#getGeoCode <- function(gcStr)  {
  #library("rjson")
  #library("jsonlite")#Load Library
  #gcStr <- gsub(" ","%20",gcStr) #Encode URL Parameters
  #Open Connection
  #connectStr <- paste("http://maps.google.com/maps/api/geocode/json?sensor=false&address=",gcStr, sep="")
  #con <- url(connectStr)
  #data.json <- fromJSON(paste(readLines(con), collapse=""))
  #close(con)
  #Flatten the received JSON
  #data.json <- unlist(data.json)
  #if(data.json["status"]=="OK")   {
    #lat <- data.json["results.geometry.location.lat"]
    #lng <- data.json["results.geometry.location.lng"]
    #gcodes <- c(lat, lng)
    #names(gcodes) <- c("Lat", "Lng")
    #return (gcodes)
  #}
#}
#geoCodes <- getGeoCode("San Francisco, California, United States")

#geoCodes

#reverseGeoCode <- function(latlng) {
  #latlngStr <-  gsub(‘ ‘,’%20’, paste(latlng, collapse=”,”))#Collapse and Encode URL Parameters
  #library(“RJSONIO”) #Load Library
  #Open Connection
  #connectStr <- paste(‘http://maps.google.com/maps/api/geocode/json?sensor=false&latlng=’,latlngStr, sep=””)
  #con <- url(connectStr)
  #data.json <- fromJSON(paste(readLines(con), collapse=””))
  #close(con)
  #Flatten the received JSON
  #data.json <- unlist(data.json)
  #if(data.json[“status”]==”OK”)
    #address <- data.json[“results.formatted_address”]
  #return (address)
#}
#address <- reverseGeoCode(c(37.4418834, -122.1430195))
# address
#results.formatted_address
#“668 Coleridge Ave, Palo Alto, CA 94301, USA”
