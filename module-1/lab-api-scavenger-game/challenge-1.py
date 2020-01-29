import json
import requests
import os
import re
from dotenv import load_dotenv
load_dotenv('your-code/.env')

def requestGithub(endpoint):
    token = os.getenv("GITHUB_APIKEY")
    print (token)
    if not token:
        raise ValueError("Necesitas un GITHUB_APIKEY token")
    
    baseUrl = "https://api.github.com"
    url = baseUrl+endpoint
    print(f"Requesting data from {url}")
    headers = {
        "Authorization": f"token {token}"
    }
    res = requests.get(url,headers=headers)
    if res.status_code != 200:
        print(res.text)
        raise ValueError("Bad Response")
    return res.json()

requestGithub("/repos/ironhack-datalabs/datamad0120")

data=requestGithub("/repos/ironhack-datalabs/datamad0120/forks")

'''
Compruebo si el total de fork, coincide con el que se muestra en la página.
'''

print(len(data))

list_language=[]
for e in data:   
    if "language" in e:
        if e["language"] not in list_language:
            list_language.append(e["language"])

print(list_language)
