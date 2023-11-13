from github import Github 
from github import Auth
auth = Auth.Token("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")
g = Github(auth=auth)
g = Github(auth=auth, base_url="https://{hostname}/api/v3")
for repo in g.get_user().get_repos():
    print(repo.name)
    repo.edit(has_wiki=False)
    # to see all the available attributes and methods
    print(dir(repo))
g.close()

