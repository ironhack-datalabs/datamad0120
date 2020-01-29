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

data_commit=requestGithub("/repos/ironhack-datalabs/datamad0120/commits?since=2020-01-20T00:00:00Z&until=2020-01-26T23:59:59Z")


print('Total commits: ',len(data_commit))