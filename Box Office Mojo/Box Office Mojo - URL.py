########## NOTE: Make sure you set working directory in the bar above ##########
from bs4 import BeautifulSoup
import csv

from urllib.request import urlopen
urlopen("http://www.google.com/")

# extract links to the site pages the provide links to each of the movies available on box office mojo.
url = "http://www.boxofficemojo.com/movies/alphabetical.htm?letter=A&p=.htm"

html = urlopen(url).read()
soup = BeautifulSoup(html, 'lxml')

partialLinksIndex = []
for link in soup.select("tr a"):
	if link.get('href')[0:20] == '/movies/alphabetical' and link.get('href') not in partialLinksIndex:
		partialLinksIndex.append(link.get('href'))

for i in range(0,len(partialLinksIndex)+1):
	url = "http://www.boxofficemojo.com" + partialLinksIndex[i]
	html = urlopen(url).read()
	soup = BeautifulSoup(html, 'lxml')
	for link in soup.select("tr a"):
		if link.get('href')[0:20] == '/movies/alphabetical' and link.get('href') not in partialLinksIndex:
			partialLinksIndex.append(link.get('href'))
print ('\n')

# extract the movie links for each movie on box office mojo
print (len(partialLinksIndex)
print (partialLinksIndex[144])
print ('\n')

movieLinks = []
for i in range (0,len(partialLinksIndex)):
	print '--- processing link %d/%d ---' %(i+1,len(partialLinksIndex))
	url = "http://www.boxofficemojo.com" + partialLinksIndex[i]
	html = urlopen(url).read()
	soup = BeautifulSoup(html, 'lxml')
	partialLinks = []
	for link in soup.select("tr a"):
		partialLinks.append(link.get('href'))
	for element in partialLinks:
		if element[0:9] ==  '/movies/?':
			movieLinks.append(element)

# print size of movie links list
print (len(movieLinks))
print (movieLinks[1000])
print (movieLinks[2000])
print (movieLinks[3000])

# deal with unicode
movieLinksClean = []
for i in range(0, len(movieLinks)):
	movieLinksClean.append(movieLinks[i].encode('ascii', 'ignore')) 

# write output to csv file: movieLinks.txt
with open('\\Users\\Ashley Rodondi\\Documents\\Spring 2018\\MBA 696 MSBA Capstone Project\\Capstone Project Final\\' + 'movieLinks.txt', 'a') as ofile:
    for idx, links in enumerate(movieLinksClean):
        links = links.decode('utf-8')

        if idx % 1000 == 0:
            print(idx)
        ofile.write("".join(links) + "\n")








