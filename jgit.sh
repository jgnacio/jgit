#/bin/bash
git fetch
git pull
read -e -p "files to send: " archives_to_push
git add $archives_to_push
read -e -p "message fot this commit: " message
git commit -m "$message"

user_name="git config user.name"
user_email="git config user.email"

if [[ -z $user_name ]]
then
	echo 'user.name is not set'
	read -e -p "Your user name of github for config" $user_name
	git config user.name "$user_name"
fi
if [[ -z $user_email ]]
then
	echo 'user.email is not set'
	read -e -p "Your email of github for config" $user_email
	git config user.email "$user_email"
fi
git status
git push

