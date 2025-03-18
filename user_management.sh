#!/bin/bash

# Comprehensive User Management Script for Ubuntu
# Author: Boni Yeamin
# Email: boniyeamin.cse@gmail.com

# Function to display the help menu
display_help() {
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
    echo "Usage: ./user_management.sh [option]"
    echo "Options:"
    echo "  1) Create a New User"
    echo "  2) Delete a User"
    echo "  3) List All Users"
    echo "  4) Lock a User"
    echo "  5) Unlock a User"
    echo "  6) Create a Group"
    echo "  7) Delete a Group"
    echo "  8) Add User to Group"
    echo "  9) List All Groups"
    echo " 10) Exit"
    echo " 11) Help"
    echo "========================================================================================================"
}

# Function to create a new user
create_user() {
    read -p "Enter the username to create: " username
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists!"
    else
        sudo adduser $username
        echo "User '$username' created successfully!"
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter the username to delete: " username
    if id "$username" &>/dev/null; then
        read -p "Are you sure you want to delete user '$username'? (y/n): " confirmation
        if [ "$confirmation" == "y" ]; then
            sudo deluser --remove-home $username
            echo "User '$username' deleted successfully!"
        else
            echo "Deletion of user '$username' cancelled."
        fi
    else
        echo "User '$username' does not exist!"
    fi
}

# Function to list all users
list_all_users() {
    cut -d: -f1 /etc/passwd
}

# Function to lock a user
lock_user() {
    read -p "Enter the username to lock: " username
    if id "$username" &>/dev/null; then
        sudo usermod -L $username
        echo "User '$username' locked successfully!"
    else
        echo "User '$username' does not exist!"
    fi
}

# Function to unlock a user
unlock_user() {
    read -p "Enter the username to unlock: " username
    if id "$username" &>/dev/null; then
        sudo usermod -U $username
        echo "User '$username' unlocked successfully!"
    else
        echo "User '$username' does not exist!"
    fi
}

# Function to create a group
create_group() {
    read -p "Enter the group name to create: " groupname
    if getent group "$groupname" &>/dev/null; then
        echo "Group '$groupname' already exists!"
    else
        sudo groupadd $groupname
        echo "Group '$groupname' created successfully!"
    fi
}

# Function to delete a group
delete_group() {
    read -p "Enter the group name to delete: " groupname
    if getent group "$groupname" &>/dev/null; then
        sudo groupdel $groupname
        echo "Group '$groupname' deleted successfully!"
    else
        echo "Group '$groupname' does not exist!"
    fi
}

# Function to add a user to a group
add_user_to_group() {
    read -p "Enter the username to add to the group: " username
    read -p "Enter the group name: " groupname
    if id "$username" &>/dev/null; then
        if getent group "$groupname" &>/dev/null; then
            sudo usermod -aG $groupname $username
            echo "User '$username' added to group '$groupname' successfully!"
        else
            echo "Group '$groupname' does not exist!"
        fi
    else
        echo "User '$username' does not exist!"
    fi
}

# Function to list all groups
list_all_groups() {
    cut -d: -f1 /etc/group
}

# Main menu
while true; do
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
    echo "1) Create a New User"
    echo "2) Delete a User"
    echo "3) List All Users"
    echo "4) Lock a User"
    echo "5) Unlock a User"
    echo "6) Create a Group"
    echo "7) Delete a Group"
    echo "8) Add User to Group"
    echo "9) List All Groups"
    echo "10) Exit"
    echo "11) Help"
    echo "========================================================================================================"

    read -p "Choose an option: " option

    case $option in
        1) create_user ;;
        2) delete_user ;;
        3) list_all_users ;;
        4) lock_user ;;
        5) unlock_user ;;
        6) create_group ;;
        7) delete_group ;;
        8) add_user_to_group ;;
        9) list_all_groups ;;
        10) echo "Exiting..."; exit 0 ;;
        11) display_help ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
