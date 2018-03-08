#!/bin/bash

user_name=test
option=$1

function create_user(){
	for i in {1..10}
	do
		password=`tr -dc [:alpha:] < /dev/random | head -c 8`
		echo $password
		useradd -d /home/$user_name$i -s /bin/bash $user_name$i
		echo "$password"|passwd --stdin $user_name$i
		echo "$i $user_name$i password is $password"
		echo "$user_name$i password is $password" >> `pwd`/userpasswd.log
	done
	}
function del_user(){
	rm -f `pwd`/userpasswd.log
	for i in {1..10}
	do
		userdel -r $user_name$i
		echo "delete $user_name$i successfully"
	done
}

function main(){
case $option in
	create)
		echo "start to create user"
		create_user
		echo "create user finished"
	;;
	delete)
		echo "start to delete user"
		del_user
		echo "delete user finished"
	;;
esac
}

main



