#################### Descriptive Statistics ####################
# Required Libraries
  library(Hmisc)
  library(pastecs)

# Retrieving New York Times Movie Review - Article, Genre, and Sentiment Score csv 
  URL <- "https://raw.githubusercontent.com/ashleyrodondi/MSBA-Capstone-Project/master/Final%20Dataset/Final%20Dataset.csv"
  df <- read.csv(URL, header = TRUE, sep = ",", stringsAsFactors = FALSE) 

# Subset of Data 
  df_subset <- df[,c(4,8,9,11,12,13,14,15,16,18,21,22)]
  
# Describe, Summary and Stat tests  
  describe(df_subset)
  summary(df_subset)
  stat.desc(df_subset)
  
#################### Frequency Distribution (Genre) ####################
# Required Libraries
  library(plotly)
  library(plyr)
  
# Frequency Distribution - Genre    
  VariableValue <- c("Action","Animation","Biography","Comedy","Crime","Drama","Family","Horror","Sci-Fi","Thriller")
  ValidPercent <- c(39,12,9,18,1,11,1,7,1,1) 
  
  df <- data.frame(VariableValue, ValidPercent)

# Barplot 
  BP <- barplot(ValidPercent, 
                col = "Black",
                main = "Frequency Distribution of Genre",
                xlab = "Genre",
                ylab = "Valid Percent (%)",
                names.arg = c("Action","Animation","Biography","Comedy","Crime","Drama","Family","Horror","Sci-Fi","Thriller"),
                ylim = c(0,50)) 
  
# Overhead lables with percentages  
  text(0.7,43,"39%")
  text(1.9,16,"12%")
  text(3.1,13,"9%")
  text(4.3,22,"18%")
  text(5.5,5,"1%")
  text(6.7,14,"11%")
  text(7.9,5,"1%")
  text(9.1,10,"7%")
  text(10.3,5,"1%")
  text(11.5,5,"1%")
  
  
#################### Frequency Distribution (MPAA Rating) ####################
# Required Libraries
  library(plotly)
  library(plyr)
  
# Frequency Distribution - MPAA Rating   
  VariableValue <- c("G", "PG", "PG-13", "R")
  ValidPercent <- c(1,15,44,40)
  
  df <- data.frame(VariableValue, ValidPercent)
  
# Barplot 
  BP <- barplot(ValidPercent, 
                col = "Black",
                main = "Frequency Distribution of MPAA Rating",
                xlab = "MPAA Rating",
                ylab = "Valid Percent (%)",
                names.arg = c("G", "PG", "PG-13", "R"),
                ylim = c(0,50))

# Overhead lables with percentages   
  text(0.7,5,"1%")
  text(1.9,19,"15%")
  text(3.1,48,"44%")
  text(4.3,44,"40%")
  
#################### Frequency Distribution (Distributor) ####################
# Required Libraries
  library(plotly)
  library(plyr)
  
# Frequency Distribution - Genre    
  VariableValue <- c("A24","Aviron","Bleecker Street","Buena Vista","Entertainment Studios","Focus Features","Fox","Fox Searchlight","Lionsgate","Lionsgate/Summit","Neon","Open Road Films","Pantelion","Paramount","Sony/Columbia","Sony/Screen Gems","STX Entertainment", "TriStar","Universal","Warner Bros.", "Weinstein Company")
  
  ValidPercent <- c(2,1,1,7,1,5,12,2,5,4,1,3,1,9,7,2,5,2,11,16,2) 
  
  df <- data.frame(VariableValue, ValidPercent)
  
# Barplot 
  BP <- barplot(ValidPercent, 
                col = "Black",
                main = "Frequency Distribution of Distributors",
                xlab = "Distributor",
                ylab = "Valid Percent (%)",
                names.arg = c("A24","Aviron","Bleecker Street","Buena Vista","Entertainment Studios","Focus Features","Fox","Fox Searchlight","Lionsgate","Lionsgate/Summit","Neon","Open Road Films","Pantelion","Paramount","Sony/Columbia","Sony/Screen Gems","STX Entertainment", "TriStar","Universal","Warner Bros.", "Weinstein Company"),
                ylim = c(0,20),
                cex.names = 0.53)
             
    
  # Overhead lables with percentages  
  text(0.7,3,"2%")
  text(1.9,2,"1%")
  text(3,2,"1%")
  text(4.3,8,"7%")
  text(5.5,2,"1%")
  text(6.7,6,"5%")
  text(8,13,"12%")
  text(9.1,3,"2%")
  text(10.3,6,"5%")
  text(11.6,5,"4%")
  text(12.7,2,"1%")
  text(13.8,4,"3%")
  text(15.1,2,"1%")
  text(16.3,10,"9%")
  text(17.5,8,"7%")
  text(18.7,3,"2%")
  text(19.9,6,"5%")
  text(21.1,3,"2%")
  text(22.3,12,"11%")
  text(23.6,17,"16%")
  text(24.7,3,"2%")
  
  
  
