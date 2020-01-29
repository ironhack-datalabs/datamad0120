from dotenv import load_dotenv
import os
import requests

load_dotenv()

token = os.getenv("GITHUB_KEY")
url = "https://api.github.com/repos/ironhack-datalabs/datamad0120/forks"
headers = {
        "Authorization": f"token {token}"
    }
response = requests.get(url, headers=headers)
data = response.json()
language = [(i["owner"]["login"], i["language"]) for i in data]
print(language)
