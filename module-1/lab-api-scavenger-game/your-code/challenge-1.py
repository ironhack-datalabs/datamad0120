import os
from dotenv import load_dotenv
import json
import requests
load_dotenv() #si no estuviera el .env en la misma carpeta habría que poner
#la ruta relativa entre los paréntesis

forks = "/repos/ironhack-datalabs/datamad0120/forks"

def requestGithub (endpoint):
    token = os.getenv("GITHUB_APIKEY")
    if not token:
        raise ValueError ("Necesitas un token")
    direccion="https://api.github.com"
    url = direccion+endpoint
    

    print(f"Haciendo request a {url}")
    headers = {
        "Authorization": f"token {token}"}

    res = requests.get(url, headers=headers)
    return res.json()
    

forks1 = requestGithub(forks)


