# enter your code below

#Importación de módulos y librerías
import os
from dotenv import load_dotenv
import requests
import json


#Obtener Token de Github
load_dotenv()
token = os.getenv("GITHUB_APIKEY")
print(f"We have a github token: {token[0:3]}")

#Obtener URL solicitada
baseUrl = "https://api.github.com"
endpoint = "/repos/ironhack-datalabs/datamad0120/forks"
headers = {
    "Authorization": f"token {token}"
}
url = baseUrl + endpoint
print(url)

#Solicitar la petición correspondiente por HTTP:
peticion = requests.get(url, headers=headers)
print(peticion.status_code)
result = peticion.json()



#Tratamiento de datos tras la petición:

print(len(result))

language = []

for element in result:

    language.append(result[0]["language"])

print(language)

