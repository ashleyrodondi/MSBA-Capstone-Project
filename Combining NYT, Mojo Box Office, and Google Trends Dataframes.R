#################### Combining NYT and Mojo Box Office Dataframes #################### 
# Required Libraries 
  library(knitr)

# Combining NYT and Mojo Box Office Data 
  NYT_df <- read.csv("New York Times Movie Reviews_Article_Genre_SentimentScore.csv")
  Mojo_df <- read.csv("Mojo Box Office.csv")

  NYT_Mojo_dataframe <- merge(NYT_df, Mojo_df, by = c("display_title"))
  NYT_Mojo_df <- NYT_Mojo_dataframe [,c("display_title","opening_date","publication_date","url",
                                         "critics_pick","review","sentiment_score","genre.x","MPAA_rating",
                                         "distributor","production_budget","opening_weekend","domestic_total_gross",
                                         "foreign_box_office","widest_release_theaters","release_date","close_date",
                                         "in_release_days", "in_release_weeks")] # Subset of specific columns

  kable(NYT_Mojo_df, row.names = TRUE) # Display combined dataframe with row numbers
  write.table(NYT_Mojo_df, "NYT_Mojo_Data.csv") # Export dataframe to .csv
  