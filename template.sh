#!/usr/bin/env bash

# add title according to the template


# define the global variables
AUTHOR="Maciej Bak"
EMAIL="wsciekly.maciek@gmail.com"
DATE=`date +"%d-%m-%Y"`
LICENSE="GPL"


# check for the correct call
if [ $# -ge 2 ]; then
	echo "Incorrect call; please provide file name only.";
	exit;
fi


# check if file already exists
if test -f "$1"; then
	echo "File already exists.";
	exit;
fi


# match the file name against extensions
case $(echo $1 | cut -d . -f2) in
	c) cp `dirname $0`/templates/template.c $1 ;;
	cpp) cp `dirname $0`/templates/template.cpp $1 ;;
	h) cp `dirname $0`/templates/template.h $1 ;;
	py) cp `dirname $0`/templates/template.py $1 ;;
	r) cp `dirname $0`/templates/template.r $1 ;;
	sh) cp `dirname $0`/templates/template.sh $1 ;;
	yaml) cp `dirname $0`/templates/template.yaml $1 ;;
    *) echo "Template undefined." ;;
esac
# match:
# call sed on the right template
# substutite placeholders
# and create new file given by $1

