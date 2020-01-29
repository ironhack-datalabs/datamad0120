import os
from dotenv import load_dotenv
load_dotenv()

token = os.getenv("GITHUB_APIKEY")
print(f"We have a github token: {token}")
# enter your code below