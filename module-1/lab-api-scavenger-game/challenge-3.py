import json
import requests
import os
import re
import base64
from dotenv import load_dotenv
load_dotenv('your-code/.env')

def requestGithub(endpoint):
    token = os.getenv("GITHUB_APIKEY")
    print (token)
    if not token:
        raise ValueError("Necesitas un GITHUB_APIKEY token")
    
    baseUrl = "https://api.github.com"
    url = baseUrl+endpoint
    print(f"Requesting data from {url}")
    headers = {
        "Authorization": f"token {token}"
    }
    res = requests.get(url,headers=headers)
    if res.status_code != 200:
        print(res.text)
        raise ValueError("Bad Response")
    return res.json()

requestGithub("/repos/ironhack-datalabs/scavenger")

data_files=requestGithub("/repos/ironhack-datalabs/scavenger/contents")

print(len(data_files))

name_files=[]

for file in data_files:
    name_files.append(file['name'])

name_files.remove('.gitignore')

print(len(name_files))
print('Las carpetas del repositorio son: ',name_files)


scavengerhunt_list=[]


for file in name_files:
    infile=requestGithub(f'/repos/ironhack-datalabs/scavenger/contents/{file}')
    
    for e in infile:        
        string=str(e['name'])
        res=re.findall(r'(....)\.scavengerhunt',e['name'])
        if res:
            scavengerhunt_list.append(res)
            

scavengerhunt_list=[e+'.scavengerhunt' for lista in scavengerhunt_list for e in lista]

print(scavengerhunt_list)

path=list(zip(name_files,scavengerhunt_list))

path.sort(key=lambda path: path[1])
print(path)

path2=[]
for a,b in path:
    string=str(a)+'/'+str(b)
    path2.append(string)


print(path2)


joke=[]
for ext in path2:
    code=requestGithub(f'/repos/ironhack-datalabs/scavenger/contents/{ext}')
    contenido=base64.b64decode(code)
    
    joke.append(contenido)

print (joke)

