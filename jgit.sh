#/bin/bash
read -e -p "files to send: " archives_to_push
git add $archives_to_push
read -e -p "message fot this commit: " message
git commit -m "$message"
git status
git push
