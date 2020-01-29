import requestGithub as r

# Challenge 1
forks = r.requestGithub("/repos/ironhack-datalabs/datamad0120/forks")
 
print([item['language'] for item in forks])
