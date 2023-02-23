#!/bin/sh
# Purpose: Create an user, with options
#		    1 Custimized propertie
#           2 Set password
#			3 Create a file into user directory

# Solution 1 to set the user password--> stdin
# passwd expects the default mode of input via the input prompts
# More detail at --> https://www.baeldung.com/linux/passwd-shell-script

user2Add="malvin"
userfolder=""
useradd $user2Add -c "Pruebas de creación de Usuarios" -m
PASSWD="LaLiga-rules29"
#Set Password using stdin
echo $PASSWD | passwd --stdin $user2Add
userfolder=$( getent passwd $user2Add | cut -d: -f6 )
cd $userfolder
echo "Welcome to W Corp." >> welcome.txt
chmod 744 welcome.txt
echo "User: " $user2Add "created"
