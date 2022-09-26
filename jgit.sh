#/bin/bash
git fetch
git pull
read -e -p "files to send: " archives_to_push
git add $archives_to_push
read -e -p "message fot this commit: " message
git commit -m "$message"
read -e -p "Your user name of github for config" user_name
git config user.name "$user_name"
read -e -p "Your email of github for config" user_email
git config user.email "$user_email"
git status
git push
