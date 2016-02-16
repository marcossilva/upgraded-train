from bs4 import BeautifulSoup
import urllib
# url = raw_input("Enter URL:")
# if len(url) < 1:
url = "http://steamcommunity.com/id/mleal/wishlist"

print "Retrieving ", url
fhand = urllib.urlopen(url)
html = fhand.read()
soup = BeautifulSoup(html, 'lxml')
tags = soup.find_all("div", class_="wishlistRowItem")
for game in tags:
	try:
		print "INSERT INTO 'hw3'.'games' ('gameName', 'addedOn', 'price') VALUES ('" + game.find(class_="ellipsis").get_text().strip() + "', '" + game.find(class_="wishlist_added_on ellipsis").get_text().strip()[9:] + "', '" + game.find(class_="price").get_text().strip() + "');"
	except:
		continue