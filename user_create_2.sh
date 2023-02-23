#!/bin/sh
# Purpose: Create an user, with options
#		    1 Custimized propertie
#           2 Set password
#			3 Create a file into user directory

# Solution 2 to set the user password with--> chpasswd
# chpasswd Expects the password to be passed via STDIN by default.
#More detail at --> https://www.baeldung.com/linux/passwd-shell-script

user2Add="malvin"
userfolder=""
useradd $user2Add -c "Pruebas de creación de Usuarios" -m
PASSWD="LaLiga-rules29"
#Set password using chpasswd command
echo "$user2Add:$PASSWD" | chpasswd
userfolder=$( getent passwd $user2Add | cut -d: -f6 )
cd $userfolder
echo "Welcome to W Corp." >> welcome.txt
chmod 744 welcome.txt
echo "User: " $user2Add "created"
