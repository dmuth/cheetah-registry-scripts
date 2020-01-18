#!/bin/bash
#
# This script exports all user JSON files into a single CSV, suitable for
# ingesting into my Google Sheets.
#

# Errors are fatal
set -e

# Change to where this script lives
pushd $(dirname $0) > /dev/null
 
#cat users/\@swishchee.json | jq . # Debugging

# Our JQ query
JQ='[.username, .name, "", "", "", "", .profile_image_url, .location, .url, .bio ] | @csv'

#
# Loop through our users and write everything to stdout
#
for USER in users/*
do
	cat $USER | jq -r "$JQ"
done


