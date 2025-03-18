# Ubuntu User Management Script

## Author
**Name:** Boni Yeamin  
**Email:** boniyeamin.cse@gmail.com  

## Overview
The Ubuntu User Management Script is a bash script designed to help system administrators manage users and groups on an Ubuntu system. It provides a menu-driven interface for creating and managing users and groups, including creating new users, listing all users, locking user accounts, creating and deleting groups, adding users to groups, and listing all groups.

## Features
- **Create a New User:** Easily create a new user account with prompts for username and password.
- **List All Users:** Display a list of all user accounts on the system.
- **Lock a User:** Lock a user account to prevent them from logging in.
- **Create a Group:** Create a new group on the system.
- **Delete a Group:** Delete an existing group from the system.
- **Add User to Group:** Add a user to an existing group.
- **List All Groups:** Display a list of all groups on the system.
- **Exit:** Exit the script.

## Script Usage
1. **Run the Script:**
   ```bash
   chmod +x user_management.sh
   ./user_management.sh
   ```

2. **Menu Options:**
   - **1) Create a New User:** Follow the prompt to enter the new user's username and password.
   - **2) List All Users:** Lists all current users on the system.
   - **3) Lock a User:** Enter the username of the account you wish to lock.
   - **4) Create a Group:** Enter the name of the group you wish to create.
   - **5) Delete a Group:** Enter the name of the group you wish to delete.
   - **6) Add User to Group:** Enter the username and group name to add the user to the group.
   - **7) List All Groups:** Lists all current groups on the system.
   - **8) Exit:** Exit the script.

## Script Example
Below is an example of how the script appears when it is run:

```bash
   _____   __   .__     __    ________                           
  /  _  \ |  | _|__|   |__|  /  _____/______  ____  __ ________  
 /  /_\  \|  |/ /  |   |  | /   \  __\_  __ \/  _ \|  |  \____ \ 
/    |    \    <|  |   |  | \    \_\  \  | \(  <_> )  |  /  |_> >
\____|__  /__|_ \__/\__|  |  \______  /__|   \____/|____/|   __/ 
        \/     \/  \______|         \/                   |__|  
                                                              Author : Boni Yeamin
                                                              Email  : boniyeamin.cse@gmail.com
=================================================================================================
                          Ubuntu User Management Script 
=================================================================================================

1) Create a New user
2) List All Users
3) Lock a User
4) Create a Group
5) Delete a Group
6) Add User to Group
7) List All Groups
8) Exit 
========================================================================================================
Choose An Option: 
```

## License
This script is provided as-is without any warranty. The author is not responsible for any damage or issues caused by the use of this script.

## Contact
For any issues or suggestions, please contact Boni Yeamin at boniyeamin.cse@gmail.com.
