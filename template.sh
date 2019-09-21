#!/usr/bin/env bash

###############################################################################
#
#	Master script to generate template-based text files
#
#	AUTHOR: Maciej_Bak
#	CONTACT: wsciekly.maciek@gmail.com
#	CREATED: 21-09-2019
#	LICENSE: GPL
#   USAGE: bash template.sh <FILENAME>
#
###############################################################################

# define the global variables
AUTHOR="Maciej_Bak"
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

# create the substitution command for sed
SED_COMMAND="\
-e s/{AUTHOR}/$AUTHOR/g \
-e s/{EMAIL}/$EMAIL/g \
-e s/{DATE}/$DATE/g \
-e s/{LICENSE}/$LICENSE/g \
"

# match the file name against extensions
case $(echo $1 | cut -d . -f2) in
	c) cp `dirname $0`/templates/template.c $1 ;;
	cpp) cp `dirname $0`/templates/template.cpp $1 ;;
	h) cp `dirname $0`/templates/template.h $1 ;;
	py) cp `dirname $0`/templates/template.py $1 ;;
	r) cp `dirname $0`/templates/template.r $1 ;;
	sh) #shell script
		sed $SED_COMMAND \
		<`dirname $0`/templates/template.sh \
		>$1;;
	yaml) cp `dirname $0`/templates/template.yaml $1 ;;
    *) #other files
		echo "Template undefined.";;
esac
