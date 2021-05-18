import requests, json

r = requests.get(url, auth = (user, passwd), verify = False)
r.text
rjson = r.json()

r = requests.post(url, auth = (user, passwd), data = json.dumps(data), verify = False)
r.text
rjson = r.json()
