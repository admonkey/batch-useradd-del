# script to create users from list of names & passes

# this is the working account creation block
# commented out so that it isn't accidentally run
# useradd command, -m flag to create home dir with username
# -p flag to create password in md5 crypt (relies on c utility)
# for example: useradd -m jeff -p '$1$$fsbt9amno1/uKT4HdEvXT0'
# reads from list of usernames and passwords delimited by a tab
# one set of credentials per line

# while read p; do
	# read -a arr <<< ${p}
	# useradd -m ${arr[0]} -p $(./md5.crypt ${arr[1]})
# done <users.lst

# this is a block of code to delete those same users
# while read p; do
#	echo $p
	# read -a arr <<< ${p}
	# userdel -r ${arr[0]}
# done <users.lst
echo "test"
