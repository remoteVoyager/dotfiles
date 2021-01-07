#!/bin/bash
CURR_PATH=$(pwd)
# create new encoded zip file in ~/lindocs/

cd  /mnt/c/Users/cp/Dysk\ Google/

zip -qrue ~/lindocs/my_docs.zip !Dokumeny_Uprawnienia/

# commit and push the repo


cd ~/lindocs/ 
git add .
git commit -m "docs backup commit"
git push

cd $CURR_PATH
