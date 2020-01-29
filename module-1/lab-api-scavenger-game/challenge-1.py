# enter your code below
import os
import requests
import json
import re
import base64
from dotenv import load_dotenv
load_dotenv()

#Challenge 1

def requestGithub(endpoint):
    token = os.getenv("GITHUB_APIKEY")
    if not token:
        raise ValueError("You must set a GITHUB_APIKEY token")
    
    baseUrl = "https://api.github.com"
    url = baseUrl+endpoint
    headers = {
        "Authorization": f"token {token}"
    }
    res = requests.get(url,headers=headers)
    if res.status_code != 200:
        print(res.text)
        raise ValueError("Bad Response")
    return res.json()

    
forks = requestGithub("/repos/ironhack-datalabs/datamad0120/forks")
print("Forks: ", len(forks))
language = set([e["language"] for e in forks])
print(language)

# Challenge 2:

commits = requestGithub("/repos/ironhack-datalabs/datamad0120/commits?since='2020-01-23T00:00:00Z'")
print("Commits: ", len(commits))


# Challenge 3:




files = requestGithub("/repos/ironhack-datalabs/scavenger/contents")
path = [e["path"] for e in files]

orden = []
frase = []
for e in path:
    temp = requestGithub("/repos/ironhack-datalabs/scavenger/contents/"+e)
    for j in temp:
        if type(j) == dict and "." in j["name"]:
            orden.append(int(j["name"][1:j["name"].rindex(".")]))
            word_byte = requestGithub("/repos/ironhack-datalabs/scavenger/contents/"+e+"/"+j["name"])
            word = base64.b64decode(word_byte["content"]).decode("utf-8")
            frase.append(word.strip())

result = [None]*len(orden)
for i,e in enumerate(orden):
    result[e-1] = frase[i]
print("*******************************************")
print(" ".join(result))
