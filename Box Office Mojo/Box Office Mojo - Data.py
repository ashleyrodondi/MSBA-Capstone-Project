from lxml import html
import requests
from bs4 import BeautifulSoup
import pandas as pd

movie_urls = open("\\Users\\Ashley Rodondi\\Documents\\Spring 2018\\MBA 696 MSBA Capstone Project\\Capstone Project Final\\movieLinks.txt", "r").read()

with open("\\Users\\Ashley Rodondi\\Documents\\Spring 2018\\MBA 696 MSBA Capstone Project\\Capstone Project Final\\movieLinks.txt", "r") as movie_urls:
    movie_data = []
    errors = [] 
    
    for idx, movie in enumerate(movie_urls):
        movie = movie.strip()
        
        url = ('http://www.boxofficemojo.com' + movie)
#        print(url)
        page = requests.get(url)
#        print(page)
        tree = html.fromstring(page.text)
#        print(tree)
        soup = BeautifulSoup(str(tree))
#        print(soup)
       
        # Movie Title
        movieTitle = tree.xpath('/html/head/title/text()')
        print (movieTitle)
        
        # Domestic Total Gross
        domesticTotal = tree.xpath('//*[@id="body"]//font[starts-with(normalize-space(.),"Domestic Total Gross:")]/b/text()')
        print (domesticTotal)
        
        # Genre
        genre = tree.xpath('//*[@id="body"]//td[starts-with(normalize-space(.),"Genre:")]/b/text()')
        print (genre)
        
        # Production Budget
        productionBudget = tree.xpath('//*[@id="body"]//td[starts-with(normalize-space(.),"Production Budget:")]/b/text()')
        print (productionBudget)
        
        # MPAA Rating
        mpaaRating = tree.xpath('//*[@id="body"]//td[starts-with(normalize-space(.),"MPAA Rating:")]/b/text()')
        print (mpaaRating)
        
        # Distributor
        distributor = tree.xpath('//*[@id="body"]//td[starts-with(normalize-space(.),"Distributor:")]/b/a/text()')
        print (distributor)
        
        # Release Date
        releaseDate = tree.xpath('//*[@id="body"]//td[starts-with(normalize-space(.),"Release Date:")]/b/nobr/a/text()')
        print (releaseDate)
        
        # Work around &nbsp; issue
        tree = html.fromstring(page.text.replace("&nbsp;", ""))
        
        # Foreign Box Office
        foreignBox = tree.xpath('//*[@class="mp_box_content"]//a[starts-with(normalize-space(.),"Foreign:")]/../following-sibling::*[1][name()="td"]/text()')
        print (foreignBox)
        
        # Opening Weekend
        openingWeekend = tree.xpath('//*[@class="mp_box_content"]//a[starts-with(normalize-space(.),"OpeningWeekend:")]/../following-sibling::*/text()')
        print (openingWeekend)
        
        # Widest Release
        widestRelease = tree.xpath('//*[@class="mp_box_content"]//td[starts-with(normalize-space(.),"WidestRelease:")]/following-sibling::*/text()')
        print (widestRelease)
        
        # Close Date
        closeDate = tree.xpath('//*[@class="mp_box_content"]//td[starts-with(normalize-space(.),"CloseDate:")]/following-sibling::*/text()')
        print (closeDate)
        
        # In Release
        inRelease = tree.xpath('//*[@class="mp_box_content"]//td[starts-with(normalize-space(.),"In Release:")]/following-sibling::*/text()')
        print (inRelease)
        
        headers = ['movie_title', 'domestic_total_gross', 'genre', 'production_budget', 'MPAA_rating', 'distributor','release_date', 
                   'foreign_box_office', 'opening_weekend', 'widest_release','close_date','in_release']
        
        movie_dict = dict(zip(headers, [movieTitle, domesticTotal, genre, productionBudget, mpaaRating, distributor, releaseDate, 
                   foreignBox, openingWeekend, widestRelease, closeDate, inRelease])) 
        movie_data.append(movie_dict)

df = pd.DataFrame(movie_data)
df.to_csv('mojoMovie_data.csv')
