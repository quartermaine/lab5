
key<-"c1b06598bf284957a1ddd98cdda82dff"


term <- "bill+clinton+monica" # Need to use + to string together separate words
begin_date <- "19890419"
end_date <- "20170901"

baseurl <- paste0("http://api.nytimes.com/svc/search/v2/articlesearch.json?q=",term,
                  "&begin_date=",begin_date,"&end_date=",end_date,
                  "&facet_filter=true&api-key=",key, sep="")


initialQuery <- fromJSON(baseurl)
maxPages <- round((initialQuery$response$meta$hits[1] / 10)-1)

if (maxPages>20){
  maxPages<-20
  pages <- list()
  for(i in 0:maxPages){
    nytSearch <- fromJSON(paste0(baseurl, "&page=", i), flatten = TRUE) %>% data.frame()
    message("Retrieving page ", i)
    pages[[i+1]] <- nytSearch
    Sys.sleep(1)
  }
}

allNYTSearch <- rbind_pages(pages)

# Visualize coverage by section
allNYTSearch %>%
  group_by(response.docs.type_of_material) %>%
  summarize(count=n()) %>%
  mutate(percent = (count / sum(count))*100) %>%
  ggplot() +
  geom_bar(aes(y=percent, x=response.docs.type_of_material, fill=response.docs.type_of_material), stat = "identity") + coord_flip()


