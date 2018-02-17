#################### New York Times Movie Review - REQUIRED LIBRARIES AND KEY ####################
# Required Libraries
  library(RCurl)
  library(XML)
  library(dplyr)
  library(RAdwords)

# Installing Indico package
  #source("http://bioconductor.org/biocLite.R") # Remove hashtag to run
  #biocLite("EBImage") # Remove hashtag to run

  library(devtools)
  #devtools::install_github("IndicoDataSolutions/IndicoIo-R") # Remove hashtag to run
  library(indicoio)

# indico.io API Key
  indico.io_APIkey <-"2cf9508e4628b67c9b69ae7d1059efda"

#################### New York Times Movie Review - Article, Genre, and Sentiment Score API PULL ####################  
# Retrieving list of 532 articles curated from the NYT API pull
  movie_list_url <- "https://raw.githubusercontent.com/ashleyrodondi/MSBA-Capstone-Project/master/New%20York%20Times%20Movie%20Reviews.csv"
  movie_list <-read.csv(movie_list_url, header = TRUE, sep = "")
  
  #movie_list[1:10,] # Checking the first 10 rows from the movie_list dataframe 
  #str(movie_list) # Checking the strings for the movie_list variables

# Creating an empty dataframe and list for article, genre, and sentiment score 
  movie_score <- data.frame()
  movie_review_text <- list()
  
# Setting agent for RCurl pars in forloop
  agent <- paste(c(R.version$version.string, ",", R.version$platform),collapse = "")
  
# Forloop to get review text, genre, and sentiment score for each NYT movie URL
  for (i in 1:nrow(movie_list)){
    
    #Set RCurl pars; initialize CURL context/handle which can be used for multiple requests
    curl <- getCurlHandle()
    curlSetOpt(cookiejar="cookies.txt",  useragent = agent, followlocation = TRUE, curl=curl) #If I do not need to read cookies use "curlSetOpt(cookiejar="", useragent = agent, followlocation = TRUE, curl=curl)"
    
    # Selecting movie URL from movie_list 
    movie_url <- movie_list$url[i]
    
    # Get review for corresponding movie URL
    movie_specific <- getURL(as.character(movie_url), curl = curl, verbose = TRUE)
    content_review = htmlTreeParse(movie_specific, asText = TRUE, useInternalNodes = TRUE, encoding = 'UTF-8')
    
    # Code to get review text 
    plain_text <- xpathSApply(xmlRoot(content_review), "//p[@class = 'story-body-text story-content']", xmlValue)
    review_df <- as.data.frame(as.character(paste(plain_text, collapse = "\r\n")))
    colnames(review_df) <- "review"
    
    review_df$display_title <- movie_list$display_title[i]
    movie_review_text[[i]] <- plain_text
    
    # Code to get sentiment score 
    review_df$sentiment_score <- unlist(sentiment(as.character(review_df$review), api_key = indico.io_APIkey))
    
    # Code to get genre
    genre <- xpathSApply(xmlRoot(content_review), "(//span[@itemprop='genre'][@class = 'genre'])[1]", xmlValue)
    review_df$genre <- genre
    
    movie_score <- rbind(movie_score, review_df)
  }  

#################### New York Times Movie Review - WRITE TO CSV ####################    
# write out data to .csv
  nyt_movie_score <- merge(movie_list, movie_score, by = "display_title")
  write.csv(nyt_movie_score, "New York Times Movie Reviews_Article_Genre_SentimentScore.csv") #export sentiment
  
  