#!/bin/bash

# Ubuntu User Management Script
# Author : Boni Yeamin
# Email  : boniyeamin.cse@gmail.com

echo "   _____   __   .__     __    ________                           "
echo "  /  _  \ |  | _|__|   |__|  /  _____/______  ____  __ ________  "
echo " /  /_\  \|  |/ /  |   |  | /   \  __\_  __ \/  _ \|  |  \____ \ "
echo "/    |    \    <|  |   |  | \    \_\  \  | \(  <_> )  |  /  |_> >"
echo "\____|__  /__|_ \__/\__|  |  \______  /__|   \____/|____/|   __/ "
echo "        \/     \/  \______|         \/                   |__|  "
echo "                                                              Author : Boni Yeamin"
echo "                                                              Email  : boniyeamin.cse@gmail.com"
echo "================================================================================================="
echo "                          Ubuntu User Management Script "
echo "================================================================================================="

echo "1) Create a New user"
echo "2) List All Users"
echo "3) Lock a User"
echo "4) Create a Group"
echo "5) Delete a Group"
echo "6) Add User to Group"
echo "7) List of Groups"
echo "8) Exit"
echo "========================================================================================================"

while true; do
    read -p "Choose An Option: " option

    case $option in
        1)
            read -p "Enter the username to create: " username
            sudo adduser $username
            ;;
        2)
            cut -d: -f1 /etc/passwd
            ;;
        3)
            read -p "Enter the username to lock: " username
            sudo usermod -L $username
            ;;
        4)
            read -p "Enter the group name to create: " groupname
            sudo groupadd $groupname
            ;;
        5)
            read -p "Enter the group name to delete: " groupname
            sudo groupdel $groupname
            ;;
        6)
            read -p "Enter the username to add to group: " username
            read -p "Enter the group name: " groupname
            sudo usermod -aG $groupname $username
            ;;
        7)
            cut -d: -f1 /etc/group
            ;;
        8)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
