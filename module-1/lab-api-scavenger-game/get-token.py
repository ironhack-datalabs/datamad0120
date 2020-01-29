import os
from dotenv import load_dotenv
load_dotenv()

token = os.getenv("GITHUB_APIKEY","test")
print(f"We have a github token: {token}")
