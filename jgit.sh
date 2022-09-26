#/bin/bash
git fetch
git pull
read -e -p "files to send: " archives_to_push
git add $archives_to_push
read -e -p "message fot this commit: " message
git commit -m "$message"

user_name="git config user.name"
user_email="git config user.email"

if [[ -z $user_name ]];then
	echo 'user.name is not set'
	read -e -p "Your user name of github for config" $user_name
	git config user.name "$user_name"
if [[ -z $user_email ]];then
	echo 'user.email is not set'
	read -e -p "Your email of github for config" $user_email
	git config user.email "$user_email"

response="y"
read -e -p 'your sure to update this files?[Y/n]"\n"' $response

if [[ $response = "n" ]]
	set -e
	
git status
git push
