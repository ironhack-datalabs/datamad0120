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


#Variables de API requeridas en Github:

usuario = "ironhack-datalabs"
repositorio = "scavenger"
accion = "contents"
path = ""

#Obtener URL solicitada
baseUrl = "https://api.github.com"
endpoint = f"/search/code"
headers = {
    "Authorization": f"token {token}"
}
url = baseUrl + endpoint+"?"+f"q=extension:scavengerhunt+repo:{usuario}/{repositorio}"


#Solicitar la petición correspondiente por HTTP:
peticion = requests.get(url, headers=headers)
print(peticion.status_code)
result = peticion.json()



#Tratamiento de datos tras la petición:

names = []

for element in result["items"]:

    names.append(element["name"])





paths = []

for element in result["items"]:

    paths.append(element["path"])


content = []

for path in paths:

    url2 = f"https://api.github.com"+"?"+f"repos/ironhack-datalabs/scavenger/contents/{path}"
    peticion2 = requests.get(url2, headers=headers)
    print(peticion.status_code)
    result2 = peticion2.json()

    print(result2)
    