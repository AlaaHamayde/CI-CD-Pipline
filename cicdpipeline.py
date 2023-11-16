import time
import subprocess

bash_script_path = '/home/alaa/CI-CD-Pipline'
subprocess.run(['bash', bash_script_path])
from github import Github 
from github import Auth

auth = Auth.Token("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")
g = Github(auth=auth)
repo_name = "AlaaHamayde/CI-CD-Pipline"
branch = g.get_repo(repo_name).get_branch("master")
last_commit_sha = g.get_repo(repo_name).get_commits(sha=branch.name)[0].sha
while True:
        
        latest_commit = g.get_repo(repo_name).get_commits(sha=branch.name)[0].sha

        
        if  latest_commit != last_commit_sha:
            print(f"New commit on {branch.name}\n")
        
        else:
            print("no commits detected")
# 
            # Update the last commit sha
        last_commit_sha = latest_commit

        time.sleep(5)



