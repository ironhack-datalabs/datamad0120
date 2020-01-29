import requestGithub as r

# Dejo los commandos en comentario que he usado para demonstrar el proceso

# result = r.requestGithub("/search/code?q=filename:.0001.scavengerhunt+extension:scavengerhunt+repo:ironhack-datalabs/scavenger")

# dict_keys(['total_count', 'incomplete_results', 'items'])
# Hay que acceder al items del diccionario

result = r.requestGithub("/search/code?q=extension:scavengerhunt+repo:ironhack-datalabs/scavenger")

# print(result['items'][0])

# for item in result['items']:
#     paths (item['path'])

paths = [item['path'] for item in result['items']]
print(paths)

#print(result)

# extension:0001.



# print(contents)
#print(contents[0]["content"])

# print(contents[0]['type'])

# for item in contents:
#     if item["type"] == "file":
#         print(item["content"])





