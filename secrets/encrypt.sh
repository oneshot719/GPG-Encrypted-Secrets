#! /bin/bash
FILE=$1

ABSPATH=$(cd "$(dirname "$0")"; pwd)
cd $ABSPATH   # Change to the dir where this script exists no matter how its called.

echo "Pulling any new keys and importing them."
../pubkeys/import_all_keys.sh

gpg --encrypt --always-trust -r team_name_here $FILE

echo Don\'t forget to handle/manage your unencrypted file still present in this directory
