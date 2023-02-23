#!/bin/sh
# Purpose: Monitor Linux disk space
ALERT=90 # alert level
disksOk=""
StateFILE="state"

echo "true" > state
#Beauty the output for the df
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read -r output;

do
  #Save the used space
  usep=$(echo "$output" | awk '{ print $1}' | cut -d'%' -f1 )

  #Get the used space
  partition=$(echo "$output" | awk '{ print $2 }' )

  if [ $usep -ge $ALERT ]; then  #Validate if the used space is greater than the 90%
        echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
        # I couldn't digest the Process Substitution to avoid the loss of the variable
        # So used a output to validate the state
        #disksOk="false"
        echo "false" > state
  fi
done

#Read the state of monitoring and if there are a false state don't print OK
cat $StateFILE | while read -r outputS;

do
        disksOk=$(echo "$outputS")
        if test "$disksOk" = "true" ; then
        echo "Ok"
    fi
done

rm state
