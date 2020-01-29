import requestGithub as r

forks = r.requestGithub("/repos/ironhack-datalabs/datamad0120/forks")
print(forks)

#Setting up 
# baseUrl = "https://api.github.com"
# endpoint = "/repos/ironhack-datalabs/datamad0120/forks"
# url = baseUrl+endpoint
# print(f"Requesting data from {url}")

# load_dotenv()
# token = os.getenv("GITHUB_APIKEY")
# print(f"We have a github token: {token[:3]}")

# headers = {
#     "Authorization": f"token {token}"
# }

# res = requests.get(url,headers=headers)
# print(res.status_code)

# forks = res.json()
# print(len(forks))
# print(forks[0].keys())
