#!/bin/bash

ABSPATH=$(cd "$(dirname "$0")"; pwd)
cd $ABSPATH
git pull
for filename in `ls`; do gpg --import $filename; done

GSS_TEAM=`./makegroup.sh`
echo "$team_name_here"

# This adds or replaces gpg group in the gpg config
sed -i .bak '/group team_name_here *=/d' ~/.gnupg/gpg.conf
echo $team_name_here >> ~/.gnupg/gpg.conf
