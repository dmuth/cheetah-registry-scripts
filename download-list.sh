#!/bin/bash
#
# This script downloads user info for all Twitter users contained in a list
#

# Errors are fatal
set -e

#
# Print our syntax and text
#
function print_syntax() {
	echo "! "
	echo "! Syntax: $0 FILE"
	echo "! "
	echo -e "!\tFILE - A file with one username per line"
	echo "! "
	exit 1
} # End of print_syntax()

# Change to the directory where this script lives
pushd $(dirname $0)

if test ! "$1"
then
	print_syntax
fi

FILE=$1

if test ! -f $FILE
then
	echo "! Unable to read file '$FILE'!"
	print_syntax
fi

# Our tempfile for users
USER_JSON=tmp.json

for USER in $(cat $FILE)
do
	TARGET=users/${USER}.json
	if test -f ${TARGET}
	then
		echo "# User info already downloaded ${USER}, skipping!"
		continue
	fi

	echo "# Fetching user info for ${USER}..."
	./twint --user-full -u ${USER} --json -o $USER_JSON
	mv $USER_JSON ${TARGET}

done

# Remove our tempfile
rm -f $USER_JSON


