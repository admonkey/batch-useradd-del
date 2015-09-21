# script to create/delete users from list of names & passes
error=1

# The list of users should be in a file called 'users.lst' in the same folder.
# One user per line separated by tab between name and password.
# There should be an 'example-users.lst' file in the folder for example.
# NOTE: take care when copying from excel to trim surrounding whitespace
# and be aware of CRLF differences between UNIX and Windows.
# If using Windows, be sure to encode in ANSI (option in Notepad++).

# The password encryption in useradd relies on the C crypt() function.
# There should be a utility in this folder called md5.crypt for this.
# If copying to new platform, then the source code md5.crypt.c will need
# to be compiled. Instructions for that are in the source code.

# useradd command, -m flag to create home dir with username
# -p flag to create password in md5 crypt (relies on c utility)
# for example: useradd -m jeff -p '$1$$fsbt9amno1/uKT4HdEvXT0'
# userdel command, -r flag removes home directory and crontab

# The following has been commented out so that it isn't accidentally run.
# Remove the comment character '#' from select blocks to execute.

# # this block of code adds new users
# while read p; do
	# read -a arr <<< ${p}
	# useradd -m ${arr[0]} -p $(./md5.crypt ${arr[1]})
# done <users.lst
# error=0

# # this block of code deletes those same users
# while read p; do
	# echo $p
	# read -a arr <<< ${p}
	# userdel -r ${arr[0]}
# done <users.lst
# error=0

if [ $error = 0 ]; then
	echo "complete"
else
	echo "error: did you uncomment a select block to execute?"
fi
