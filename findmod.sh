#!/bin/bash

#!/bin/bash

# Notes

# Variables

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# Storing the full path and filename in a variable:
FULLSCRIPTPATH="`pwd`/$SCRIPTNAME"

# Functions

# Main Script

read -e -p "Path to check for modified files: " SUPPLIEDPATH

read -p "Number of days piror: " DAYS

find $SUPPLIEDPATH -mtime -$DAYS -type f -exec ls -lah {} \;
