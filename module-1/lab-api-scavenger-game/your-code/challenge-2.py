from dotenv import load_dotenv
import os
import requests
from datetime import datetime
load_dotenv()

token = os.getenv("GITHUB_KEY")
url = "https://api.github.com/repos/ironhack-datalabs/datamad0120/commits?since=2020-01-22"
headers = {
        "Authorization": f"token {token}"
    }
response = requests.get(url, headers=headers)
data = response.json()
print(f"Número de commits: {len(data)}")