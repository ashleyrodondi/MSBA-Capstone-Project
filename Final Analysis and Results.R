#################### Analysis and Results ####################
# Required Libraries 
  library(datasets)
  library(gvlma)

# Retrieving Final Dataset
  URL <- "https://raw.githubusercontent.com/ashleyrodondi/MSBA-Capstone-Project/master/Final%20Dataset/Final%20Dataset.csv"
  df <- read.csv(URL, header = TRUE, sep = ",", stringsAsFactors = FALSE) 

# Subset Dataframe
  final_df <- as.data.frame(df[, c(12,21,22,9,18)])
                                 
# Scatterplot matrices
  final_df$domestic_total_gross_LOG <- log(final_df$domestic_total_gross)
  
  pairs(~final_df$domestic_total_gross_LOG + metacritic_score + user_score + production_budget + wide_release_theater, 
        data = final_df,
        main = "Scatterplots of Domestic Total Gross vs Independent Variables")
  
  ## Create the linear regression model
  fit <- lm(final_df$domestic_total_gross_LOG ~ metacritic_score + user_score + production_budget + wide_release_theater, 
            data = final_df)
  
  ## Plot the regression to check assumptions   
  par(mfrow=c(2,2))
  plot(fit)
  
  ## Overall text to make sure the model meets inear regression assumtions 
  gvmodel <- gvlma(fit)
  summary(gvmodel)
  
  ## Results of the linear regression model
  summary(fit)

#################### Not Log ####################
  # Required Libraries 
  library(datasets)
  library(gvlma)
  
  # Retrieving Final Dataset
  URL <- "https://raw.githubusercontent.com/ashleyrodondi/MSBA-Capstone-Project/master/Final%20Dataset/Final%20Dataset.csv"
  df <- read.csv(URL, header = TRUE, sep = ",", stringsAsFactors = FALSE) 
  
  # Subset Dataframe
  final_df <- as.data.frame(df[, c(12,21,22,9,18)])
  
  # Scatterplot matrices
  pairs(~domestic_total_gross + metacritic_score + user_score + production_budget + wide_release_theater, 
        data = final_df,
        main = "Scatterplots of Domestic Total Gross vs Independent Variables")
  
  ## Create the linear regression model
  fit <- lm(domestic_total_gross ~ metacritic_score + user_score + production_budget + wide_release_theater, 
            data = final_df)
  
  ## Plot the regression to check assumptions   
  par(mfrow=c(2,2))
  plot(fit)
  
  ## Overall text to make sure the model meets inear regression assumtions 
  gvmodel <- gvlma(fit)
  summary(gvmodel)
  
  ## Results of the linear regression model
  summary(fit)
  
  