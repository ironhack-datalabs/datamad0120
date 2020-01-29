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
repositorio = "datamad0120"
accion = "commits"


#Obtener URL solicitada
baseUrl = "https://api.github.com"
endpoint = f"/repos/{usuario}/{repositorio}/{accion}"
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
fechas = []
for commit in result:
    fechas.append(commit["commit"]["author"]["date"])



def arregla_fechas(dates):

    from datetime import datetime, timedelta

    fechas_fixed = []

    now = str((datetime.today() - timedelta(days=7)))[0:10]

    for element in dates:

        check = element[0:10]
    
        if check >= now:

            fechas_fixed.append(check)

    return fechas_fixed



print(len(arregla_fechas(fechas)))

