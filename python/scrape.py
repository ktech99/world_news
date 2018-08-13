import json, requests
from rake_nltk import Rake
from summarize import summarize_page
import urllib2
from bs4 import BeautifulSoup

subreddit = 'worldnews'

r = requests.get(
    'http://www.reddit.com/r/{}.json?sort=hot'.format(subreddit),
    headers={'user-agent': ''}
)

rake = Rake(min_length = 1, max_length = 3)
keywords = []
url = 'https://www.newshub.co.nz/home/world/2018/08/kiwi-tourists-urged-not-to-ride-elephants-in-thailand.html'
# get contents from url
content = requests.get(url).content
# get soup
soup = BeautifulSoup(content,'lxml') # choose lxml parser
# find the tag : <img ... >
image_tags = soup.findAll('img')
# print out image urls
for image_tag in image_tags:
    print(image_tag.get('src'))
# print(json.dumps(r.json()['data']['children'][0]))


for post in r.json()['data']['children']:
    try:
        if (not (post['data']['author'] == "null" or post['data']['url'] == "null")):
            #print(post['data']['url'].encode("utf-8"))
            # print(post['data']['permalink'].encode("utf-8"))
            # print(post['data']['author'].encode("utf-8"))
            # print(post['data']['thumbnail'].encode("utf-8"))
            # print(post['data']['title'].encode("utf-8"))
            rake.extract_keywords_from_text(post['data']['title'].encode("utf-8"))
            keywords = rake.get_ranked_phrases()
            #print(summarize_page(post['data']['url'].encode("utf-8")))
            print "----------------------------------"
    except ValueError:
        print "parse error"
