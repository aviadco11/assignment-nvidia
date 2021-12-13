# Task



## Desciption

this repo include the following files : 

1. Dockerfile - build docker img for Python3 application based on FastAPI framework.
   install python packages as list on file app/requirments.txt.
   this docker image build as a rootless and minimal permissions.

2. .gitlab-ci.yaml - CI/CD pipline.
   include the following stages : prune, build, test, release, deploy and logout.
   using variables which define on section defined variables on gitlab repo. 
   
3. Deply.sh - part of the CI/CD pipiline (stage deploy).

4. folder app - all the files application side. 
   include : test folder (unit test), requirments.txt, main.py (src code).
  

## Add your files

cd existing_repo
git remote add origin https://gitlab.com/aviad.co1/task.git
git branch -M main
git push -uf origin main
```
