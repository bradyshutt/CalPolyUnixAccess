#!/bin/bash

source quickUnixSettings.txt #This file holds your settings

#If you haven't set up ssh keygen,
#follow the instruction found in the 
#github readme, all of these steps faster

settingsError="You need to edit your settings first, located in quickUnixSettings.txt"

unixlogin(){ 
if [[ ${unixLoginName} == "" ]]; then 
   echo "No value for unixLogin" 
   echo "Add a value for it with" 
   echo "     echo \"unixLoginName=\\\"b_rodriguez@unix13.calpoly.edu\\\"\" >> quickUnixSettings.txt" 
   
else ssh -t ${unixLoginName} "cd ${unixPrefferedHomeDir} ; bash"

fi
}
