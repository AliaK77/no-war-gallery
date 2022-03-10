#set -e

#######################################################################
###
### remove the final , in output file's list of objkts loop
### update title, description, filename to match gallery name/topic
###
#######################################################################


inputfile=$1
#numOfObjkts=$2
filename="nowar-gallery.json"
i=0
title="No War"
# uid should have no spaces
uid="nowar"
description="Art donated by artists to support Ukraine fundraiser"


### prepare gallery json file - simple format
echo "{" > $filename
echo  "  \"title\": \"$title\"," >> $filename
echo  "  \"uid\": \"$uid\"," >> $filename
echo  "  \"description\": \"$description\"," >> $filename
echo  "  \"minimal\": true," >> $filename
echo  "  \"data\": [" >> $filename
echo  "    {" >> $filename
echo  "		\"objkt\": [" >> $filename


while IFS= read -r objktId; do

echo  "			$objktId," >> $filename

done < $inputfile  ### while
 
echo  "		]" >> $filename
echo  "	    }" >> $filename
echo  "	  ]" >> $filename
echo "}" >> $filename


#while [ $i -lt $length ]
#do
