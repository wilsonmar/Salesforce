#!/usr/local/bin/bash 

# This is geolocation-dx.sh from https://github.com/wilsonmar/Salesforce/new/master
# described at https://wilsonmar.github.io/salesforce-dx/
# CAUTION: THis script is under developement. Right now it's a list of commands.
# TODO: Add checks for an idempotent script that can be rerun.

# https://trailhead.salesforce.com/modules/sfdx_app_dev/units/sfdx_app_dev_create_app

echo ">>> geolocation-dx.sh running at $PWD"

function fancy_echo() {
   local fmt="$1"; shift
   # shellcheck disable=SC2059
   printf "\\n>>> $fmt\\n" "$@"
}

DX_PROJECT="geolocation"
DX_ALIAS="GeoAppScratch"
# TODO: Delete what was created.
if [ ! -d "$DX_PROJECT" ]; then
   # Fall through 
   fancy_echo "Folder $DX_PROJECT not found, so creating ..."
else
   fancy_echo "Folder $DX_PROJECT being removed ..."
   rm -rf "$DX_PROJECT"
fi

   fancy_echo "Folder $DX_PROJECT not found, so creating ..."
   sfdx force:project:create -n $DX_PROJECT
      # Sample Response:
      #target dir = /Users/wilsonmar/gits/wilsonmar/salesforce
      #create geolocation/sfdx-project.json
      #create geolocation/README.md
      #create geolocation/.forceignore
      #create geolocation/config/project-scratch-def.json
   cd "$DX_PROJECT"
   ls -al

exit # until this is added:
fancy_echo "Check if scratch org alias has already been created:"
# TODO:

if [ ! -d "$DX_PROJECT" ]; then
   fancy_echo "Creating scratch org with the alias $DX_ALIAS..."
   RESPONSE=$(sfdx force:org:create -s -f config/project-scratch-def.json -a "$DX_ALIAS")
      # The -s option indicates that you want this scratch org to be the default org for this project.
      # The -f option is the path to the project scratch org configuration file.
      # Successfully created scratch org: 00Df0000001oO2nEAE, username: test-dyuymc9mcgit@example.com
fi

# Open the default scratch org:
sfdx force:org:open

exit


if [ ! -f "sfdx-project.json" ]; then # File NOT found:
else
   LINES=$(wc -l < "${DX_PROJECT}")
   fancy_echo "\"sfdx-project.json\" already created with $LINES lines." >>$LOGFILE
fi
