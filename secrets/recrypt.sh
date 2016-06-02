#! /bin/bash
FILE=$1
INSECURE_FILE=`echo "$FILE" | rev | cut -c 5- | rev`   # Remove the .gpg from the file name

ABSPATH=$(cd "$(dirname "$0")"; pwd)
cd $ABSPATH   # Change to the dir where this script exists no matter how its called.

echo "Pulling any new keys and importing them."
../pubkeys/import_all_keys.sh

gpg --decrypt -o $INSECURE_FILE $FILE
gpg --encrypt --always-trust -r team_name_here $INSECURE_FILE
rm $INSECURE_FILE
