# enter your code below

#Importación de módulos y librerías
import os
from dotenv import load_dotenv
import requests
import json
import base64


#Obtener Token de Github
load_dotenv()
token = os.getenv("GITHUB_APIKEY")
print(f"We have a github token: {token[0:3]}")


#Variables de API requeridas en Github:

usuario = "ironhack-datalabs"
repositorio = "scavenger"
accion = "contents"


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


order_paths = []

for element in paths:
    order = (element[7:11],element)

    order_paths.append(order)
    
sorted_paths = sorted(order_paths)





#Nueva petición para extraer el contenido de cada ruta:

peticiones = []

for path in sorted_paths:

    url2 = baseUrl + f"/repos/{usuario}/{repositorio}/{accion}/{path[1]}"
    peticion2 = requests.get(url2, headers=headers)
    result2 = peticion2.json()

    peticiones.append(result2)



content = []

for element in peticiones:

    content.append(element["content"])


#Depuración de mensaje (saltos de línea y decodificación):

clean_content = []

for element in content:

    cleaning = element.rstrip()

    clean_content.append(cleaning)



decoded_content = []

for element in clean_content:

    base64_bytes = element.encode('ascii')
    message_bytes = base64.b64decode(base64_bytes)
    message = message_bytes.decode('ascii')
    message2 = message.rstrip()
    decoded_content.append(message2)


final_result = " ".join(decoded_content)

print(final_result)



    