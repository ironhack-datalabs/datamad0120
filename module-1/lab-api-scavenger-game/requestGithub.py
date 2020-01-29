import json
import os
import requests
from dotenv import load_dotenv

load_dotenv()

def requestGithub(endpoint):
    token = os.getenv("GITHUB_APIKEY")
    if not token:
        raise ValueError("You must set a GITHUB_APIKEY token")
    
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