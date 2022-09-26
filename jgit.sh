#/bin/bash
read -p 'files to send: ' archives_to_push
git add $archives_to_push
read -p 'message fot this commit: ' message
git commit -m "$message"
git status
git push
