import requestGithub as r

# Dejo los commandos en comentario que he usado para demonstrar el proceso

# result = r.requestGithub("/search/code?q=filename:.0001.scavengerhunt+extension:scavengerhunt+repo:ironhack-datalabs/scavenger")

# dict_keys(['total_count', 'incomplete_results', 'items'])
# Hay que acceder al items del diccionario
"""
result = r.requestGithub("/search/code?q=extension:scavengerhunt+repo:ironhack-datalabs/scavenger")

# print(result['items'][0])

# for item in result['items']:
#     paths (item['path'])

paths = [item['path'] for item in result['items']]
#print(paths)



#content1 = r.requestGithub(f'/repos/ironhack-datalabs/scavenger/contents/{paths[0]}')
#print(content1)

#getContent = lambda path: r.requestGithub(f'/repos/ironhack-datalabs/scavenger/contents/{path}')


# file1 = getContent(paths[0])
# print(file1)

# print(file1.keys())

# print(file1['name'],file1['content'])

# filecontents = [[file['name'],file['content']]

getNameFile = lambda path: [getContent(path)['name'], getContent(path)['content']]

# print(getNameFile(paths[0])) # Testing new function

# I noticed the encoding is 'encoding': 'base64'

listFileContent = list(map(getNameFile,paths))
print(listFileContent)

# I'm going to comment out the code that I have already used, to not call the server without need
""" 

import operator as o

listFileContent = [['.0006.scavengerhunt', 'b2YK\n'], ['.0014.scavengerhunt', 'b2YK\n'], ['.0008.scavengerhunt', 'c3BlbnQK\n'], ['.0017.scavengerhunt', 'c3BlbnQK\n'], ['.0012.scavengerhunt', 'MjAK\n'], ['.0007.scavengerhunt', 'dGltZQo=\n'], ['.0015.scavengerhunt', 'dGltZQo=\n'], ['.0021.scavengerhunt', 'bmVlZAo=\n'], ['.0022.scavengerhunt', 'dG8K\n'], ['.0005.scavengerhunt', 'cGVyY2VudAo=\n'], ['.0013.scavengerhunt', 'cGVyY2VudAo=\n'], ['.0018.scavengerhunt', 'Y29tcGxhaW5pbmcK\n'], ['.0016.scavengerhunt', 'aXMK\n'], ['.0009.scavengerhunt', 'aXMK\n'], ['.0024.scavengerhunt', 'ZGF0YS4K\n'], ['.0010.scavengerhunt', 'cHJlcGFyaW5nCg==\n'], ['.0011.scavengerhunt', 'ZGF0YSwK\n'], ['.0023.scavengerhunt', 'cHJlcGFyZQo=\n'], ['.0020.scavengerhunt', 'dGhlCg==\n'], ['.0003.scavengerhunt', 'c2NpZW5jZSwK\n'], ['.0004.scavengerhunt', 'ODAK\n'], ['.0019.scavengerhunt', 'YWJvdXQK\n'], ['.0002.scavengerhunt', 'ZGF0YQo=\n'], ['.0001.scavengerhunt', 'SW4K\n']]
sortedList = sorted(listFileContent, key=o.itemgetter(0))

sortedList[0][1]

onlyCode = [sortedList[i][1] for i in range(len(sortedList))]

# I noticed the encoding is 'encoding': 'base64'
import base64
bytes = list(map(base64.b64decode,onlyCode))

empty = ""
for word in bytes:
    empty += str(word, 'utf-8')

print(empty) # Finally...







