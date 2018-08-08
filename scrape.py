import json, requests

subreddit = 'worldnews'

r = requests.get(
    'http://www.reddit.com/r/{}.json?sort=hot'.format(subreddit),
    headers={'user-agent': ''}
)

# view structure of an individual post
# print(json.dumps(r.json()['data']['children'][0]))

for post in r.json()['data']['children']:
    if (not post['data']['author'] == "null"):
        print(post['data']['url'].encode("utf-8"))
        print(post['data']['permalink'].encode("utf-8"))
        print(post['data']['author'].encode("utf-8"))
        print(post['data']['thumbnail'].encode("utf-8"))
        print(post['data']['title'].encode("utf-8"))
