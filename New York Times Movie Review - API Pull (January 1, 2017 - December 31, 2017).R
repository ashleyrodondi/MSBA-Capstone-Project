#################### New York Times Movie Review - API PULL ####################
# Used opening date range January 1, 2017 to December 31, 2017

# Required libraries 
  library(jsonlite)
  library(knitr)

# New York Times Development Network API Key
  NYT_APIKEY = "YOUR KEY HERE"
  
# Pulling New York Times Movie Reviews - Only 20 Entires Are Grabbed Per Pull
  # Results 0-20 reviews 
  NYTReviews_1 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&order=by-title', collapse = "") 
  json_file_1 <- fromJSON(URLencode(NYTReviews_1)) 
  df1 <- as.data.frame(json_file_1$results) 
  df1.2 <- df1[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")] 
  
  # Results 21-40 reviews 
  NYTReviews_2 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=20&order=by-title', collapse = "")
  json_file_2 <- fromJSON(NYTReviews_2) 
  df2 <- as.data.frame(json_file_2$results) 
  df2.2 <- df2[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 41-60 reviews 
  NYTReviews_3 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=40&order=by-title', collapse = "")
  json_file_3 <- fromJSON(NYTReviews_3) 
  df3 <- as.data.frame(json_file_3$results) 
  df3.2 <- df3[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 61-80 reviews 
  NYTReviews_4 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=60&order=by-title', collapse = "")
  json_file_4 <- fromJSON(NYTReviews_4) 
  df4 <- as.data.frame(json_file_4$results) 
  df4.2 <- df4[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 61-80 reviews 
  NYTReviews_5 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=80&order=by-title', collapse = "")
  json_file_5 <- fromJSON(NYTReviews_5) 
  df5 <- as.data.frame(json_file_5$results) 
  df5.2 <- df5[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 81-100 reviews 
  NYTReviews_6 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=100&order=by-title', collapse = "")
  json_file_6 <- fromJSON(NYTReviews_6) 
  df6 <- as.data.frame(json_file_6$results) 
  df6.2 <- df6[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 101-120 reviews 
  NYTReviews_7 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=120&order=by-title', collapse = "")
  json_file_7 <- fromJSON(NYTReviews_7) 
  df7 <- as.data.frame(json_file_7$results) 
  df7.2 <- df7[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 121-140 reviews 
  NYTReviews_8 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=140&order=by-title', collapse = "")
  json_file_8 <- fromJSON(NYTReviews_8) 
  df8 <- as.data.frame(json_file_8$results) 
  df8.2 <- df8[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 141-160 reviews 
  NYTReviews_9 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=160&order=by-title', collapse = "")
  json_file_9 <- fromJSON(NYTReviews_9) 
  df9 <- as.data.frame(json_file_9$results) 
  df9.2 <- df9[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 161-180 reviews 
  NYTReviews_10 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=180&order=by-title', collapse = "")
  json_file_10 <- fromJSON(NYTReviews_10) 
  df10 <- as.data.frame(json_file_10$results) 
  df10.2 <- df10[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 181-200 reviews 
  NYTReviews_11 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=200&order=by-title', collapse = "")
  json_file_11 <- fromJSON(NYTReviews_11) 
  df11 <- as.data.frame(json_file_11$results) 
  df11.2 <- df11[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 201-220 reviews 
  NYTReviews_12 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=220&order=by-title', collapse = "")
  json_file_12 <- fromJSON(NYTReviews_12) 
  df12 <- as.data.frame(json_file_12$results) 
  df12.2 <- df12[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]
  
  # Results 221-240 reviews 
  NYTReviews_13 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=240&order=by-title', collapse = "")
  json_file_13 <- fromJSON(NYTReviews_13) 
  df13 <- as.data.frame(json_file_13$results) 
  df13.2 <- df13[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 241-260 reviews 
  NYTReviews_14 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=260&order=by-title', collapse = "")
  json_file_14 <- fromJSON(NYTReviews_14) 
  df14 <- as.data.frame(json_file_14$results) 
  df14.2 <- df14[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 261-280 reviews 
  NYTReviews_15 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=280&order=by-title', collapse = "")
  json_file_15 <- fromJSON(NYTReviews_15) 
  df15 <- as.data.frame(json_file_15$results) 
  df15.2 <- df15[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 281-300 reviews 
  NYTReviews_16 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=300&order=by-title', collapse = "")
  json_file_16 <- fromJSON(NYTReviews_16) 
  df16 <- as.data.frame(json_file_16$results) 
  df16.2 <- df16[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 301-320 reviews 
  NYTReviews_17 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=320&order=by-title', collapse = "")
  json_file_17 <- fromJSON(NYTReviews_17) 
  df17 <- as.data.frame(json_file_17$results) 
  df17.2 <- df17[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 321-340 reviews 
  NYTReviews_18 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=340&order=by-title', collapse = "")
  json_file_18 <- fromJSON(NYTReviews_18) 
  df18 <- as.data.frame(json_file_18$results) 
  df18.2 <- df18[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 341-360 reviews 
  NYTReviews_19 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=360&order=by-title', collapse = "")
  json_file_19 <- fromJSON(NYTReviews_19) 
  df19 <- as.data.frame(json_file_19$results) 
  df19.2 <- df19[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 361-380 reviews 
  NYTReviews_20 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=380&order=by-title', collapse = "")
  json_file_20 <- fromJSON(NYTReviews_20) 
  df20 <- as.data.frame(json_file_20$results) 
  df20.2 <- df20[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 381-400 reviews 
  NYTReviews_21 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=400&order=by-title', collapse = "")
  json_file_21 <- fromJSON(NYTReviews_21) 
  df21 <- as.data.frame(json_file_21$results) 
  df21.2 <- df21[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 401-420 reviews 
  NYTReviews_22 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=420&order=by-title', collapse = "")
  json_file_22 <- fromJSON(NYTReviews_22) 
  df22 <- as.data.frame(json_file_22$results) 
  df22.2 <- df22[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 421-440 reviews 
  NYTReviews_23 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=440&order=by-title', collapse = "")
  json_file_23 <- fromJSON(NYTReviews_23) 
  df23 <- as.data.frame(json_file_23$results) 
  df23.2 <- df23[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 441-460 reviews 
  NYTReviews_24 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=460&order=by-title', collapse = "")
  json_file_24 <- fromJSON(NYTReviews_24) 
  df24 <- as.data.frame(json_file_24$results) 
  df24.2 <- df24[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 461-480 reviews 
  NYTReviews_25 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=480&order=by-title', collapse = "")
  json_file_25 <- fromJSON(NYTReviews_25) 
  df25 <- as.data.frame(json_file_25$results) 
  df25.2 <- df25[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 481-500 reviews 
  NYTReviews_26 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=500&order=by-title', collapse = "")
  json_file_26 <- fromJSON(NYTReviews_26) 
  df26 <- as.data.frame(json_file_26$results) 
  df26.2 <- df26[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 501-520 reviews 
  NYTReviews_27 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=520&order=by-title', collapse = "")
  json_file_27 <- fromJSON(NYTReviews_27) 
  df27 <- as.data.frame(json_file_27$results) 
  df27.2 <- df27[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
  # Results 501-520 reviews 
  NYTReviews_27 = paste0('http://api.nytimes.com/svc/movies/v2/reviews/search.json?opening-date=2017-01-01;2017-12-31&api-key=', NYT_APIKEY , '&offset=520&order=by-title', collapse = "")
  json_file_27 <- fromJSON(NYTReviews_27) 
  df27 <- as.data.frame(json_file_27$results) 
  df27.2 <- df27[,c("display_title","mpaa_rating","critics_pick","byline","headline","summary_short","publication_date","opening_date")]  
  
#Results 1-532 reviews combined  
  reviews.df <- rbind(df1.2, df2.2, df3.2, df4.2, df5.2, df6.2, df7.2, df8.2, df9.2, df10.2,
                      df11.2, df12.2, df13.2, df14.2, df15.2, df16.2, df17.2, df18.2, df19.2, df20.2,
                      df21.2, df22.2, df23.2, df24.2, df25.2, df26.2, df27.2)
  
#################### New York Times Movie Review - URL API PULL ####################
# Adding URL column to dataframe
  URL1 <- json_file_1$results$link 
  URL1.2 <- URL1[,c("type", "url")]
  
  URL2 <- json_file_2$results$link 
  URL2.2 <- URL2[,c("type", "url")]
  
  URL3 <- json_file_3$results$link 
  URL3.2 <- URL3[,c("type", "url")]
  
  URL4 <- json_file_4$results$link 
  URL4.2 <- URL4[,c("type", "url")]
  
  URL5 <- json_file_5$results$link 
  URL5.2 <- URL5[,c("type", "url")]
  
  URL6 <- json_file_6$results$link 
  URL6.2 <- URL6[,c("type", "url")]
  
  URL7 <- json_file_7$results$link 
  URL7.2 <- URL7[,c("type", "url")]
  
  URL8 <- json_file_8$results$link 
  URL8.2 <- URL8[,c("type", "url")]
  
  URL9 <- json_file_9$results$link 
  URL9.2 <- URL9[,c("type", "url")]
  
  URL10 <- json_file_10$results$link 
  URL10.2 <- URL10[,c("type", "url")]
  
  URL11 <- json_file_11$results$link 
  URL11.2 <- URL11[,c("type", "url")]
  
  URL12 <- json_file_12$results$link 
  URL12.2 <- URL12[,c("type", "url")]
  
  URL13 <- json_file_13$results$link 
  URL13.2 <- URL13[,c("type", "url")]
  
  URL14 <- json_file_14$results$link 
  URL14.2 <- URL14[,c("type", "url")]
  
  URL15 <- json_file_15$results$link 
  URL15.2 <- URL15[,c("type", "url")]
  
  URL16 <- json_file_16$results$link 
  URL16.2 <- URL16[,c("type", "url")]
  
  URL17 <- json_file_17$results$link 
  URL17.2 <- URL17[,c("type", "url")]
  
  URL18 <- json_file_18$results$link 
  URL18.2 <- URL18[,c("type", "url")]
  
  URL19 <- json_file_19$results$link 
  URL19.2 <- URL19[,c("type", "url")]
  
  URL20 <- json_file_20$results$link 
  URL20.2 <- URL20[,c("type", "url")]
  
  URL21 <- json_file_21$results$link 
  URL21.2 <- URL21[,c("type", "url")]
  
  URL22 <- json_file_22$results$link 
  URL22.2 <- URL22[,c("type", "url")]
  
  URL23 <- json_file_23$results$link 
  URL23.2 <- URL23[,c("type", "url")]
  
  URL24 <- json_file_24$results$link 
  URL24.2 <- URL24[,c("type", "url")]
  
  URL25 <- json_file_25$results$link 
  URL25.2 <- URL25[,c("type", "url")]
  
  URL26 <- json_file_26$results$link 
  URL26.2 <- URL26[,c("type", "url")]
  
  URL27 <- json_file_27$results$link 
  URL27.2 <- URL27[,c("type", "url")]
  
#Results 0-532 URLs combined  
  URLs.df <- rbind(URL1.2, URL2.2, URL3.2, URL4.2, URL5.2, URL6.2, URL7.2, URL8.2, URL9.2, URL10.2,
                   URL11.2, URL12.2, URL13.2, URL14.2, URL15.2, URL16.2, URL17.2, URL18.2, URL19.2, URL20.2,
                   URL21.2, URL22.2, URL23.2, URL24.2, URL25.2, URL26.2, URL27.2)

#################### New York Times Movie Review - COMBINING DATAFRAMES ####################  
# Reviews and Links combined
  combo.reviews.URLs.df <- cbind(reviews.df, URLs.df) # Combining all reviews and URLs
  combo.reviews.URLs.df <- combo.reviews.URLs.df[,c(1:3,7,8,10)] # Subset of specific columns
  combo.reviews.URLs.df <- combo.reviews.URLs.df[,c(1,5,4,6,2,3)] # Reorder of specific columns
  
  kable(combo.reviews.URLs.df, row.names = TRUE) # Display combined dataframe with row numbers
  write.table(combo.reviews.URLs.df, "New York Times Movie Reviews.csv") # Export dataframe to .csv
  
  
