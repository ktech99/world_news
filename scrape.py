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
        print(post['data']['url'])
        print(post['data']['permalink'])
        print(post['data']['author'])
        print(post['data']['thumbnail'])
        print(post['data']['title'])
