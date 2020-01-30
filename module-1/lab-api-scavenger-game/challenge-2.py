import requestGithub as r

# Dejo los commandos en comentario que he usado para demonstrar el proceso

commits = r.requestGithub("/repos/ironhack-datalabs/datamad0120/commits")

#print(commits)
#print(commits[0].keys()
#print(commits[0]['committer'])
#print(commits[0]['commit'])
#print(commits[0]['commit']['author'])
#print(commits[0]['commit']['author']['date'])

# for item in commits:
#     print(item['commit']['author']['date'])

timesCommits = [item['commit']['author']['date'] for item in commits]
print(timesCommits)

timesStr = " ".join(timesCommits)

import re
count = len(re.findall(r'2020-01-[2][2-9]', timesStr))
print(count)

# One week ago was 22 january.



 