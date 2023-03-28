# Bash Scritping Practice

This is the practice task of bash scripting  in my Ubuntu terminal 

## Author

- [Kehinde Omokungbe](https://www.github.com/OK-CodeClinic)
### Tasks
- **01_Firstcript.sh:** This is a simple script written to show simple linux commands 
```echo``` ```free -m``` ```uptime``` ```df-f```
- **02_websetup.sh:** Simple Script written to download artifact, services, and deploy on to the websever

- **03_var_websetup.sh:** Simple Script written to download artifact, services, and deploy on to the websever by delaring variables. Varibales declared include; ```$PACKAGE```, ```$SVC```, ```$ART_NAME```, ```$TEMPDIR``` ```$URL```

- **04_dismantle.sh:** This script was written to destroy actions perform by 02_websetup.sh to enable proper execution of 03_var_websetup.sh from start to finish

- **05_sysinfo.sh:** Simple scripts written to prints simple system info; Partition, RAM and freespace. Its demostrate the usage of Command Substitution.

- **06_UserInput.sh:** A simple script that takes and execute user input using the command ```read```.
```
read options
 -  read -p :  This prompt user to input something
 -  read -s : Means suppress. 
Here, read -sp; is used to suppress or hide from display whatever user is prompted to input, and this is mostly used in the case of password.
```
- **07_if_statement.sh:** It is a simple if statement that takes input from the user and execute the if statment with a simple aritmethic operator ```-ge```

- **08_if_else_statement.sh:** A simple script executes if statment that takes input from user and execute a if/else block statement using simple aritmethic operator  ```-ge```

- **09_if_elif_statement.sh:** Simple script showing if/elif/else statment that is revealing a network interface found. This command ```ip addr show``` is piped ```ip addr show | grep -v LOOPBACK | grep -ic mtu```. to display how many network interface are found on the linux server.

- **10_monit.sh:** Simple script that monitors the process of apache2 server, using a ```$? variable``` in a nested if/else conditions. If the condition is true the apache2 process run smoothly, and if not true it will start the process.

- **11_monit_test.sh:** Script that checks if apache2 is running or not. Here, Shell file test operator ```-f file``` is used to determine if ```/var/run/apache2/apache2.pid``` exist or not, it then starts apache2 if doesn't exist.

- **12_for_loop_addusr.sh:** Script that add users using a for loop till all users are added succefully. Using the command ```useradd``` and diplay its id using ```id $usr```

- **13_for_loop_deluser.sh:** Script that delete users in a for loop. Here command ```userdel``` is used. In most Linux distributions, when removing a user account with ```userdel```, the user home and mail spool directories are not removed. So, i used ```userdel -r``` command.

- **14_while_loop.sh:** Scripts that shows available venues in numbers using while loop.

- **15_multiple_OS.sh:** Its a script that show demostration on remote execution. In this case, i have 3 Operating System; ```CentOS7```, ```CentOS8``` and ```Ubuntu18```. Installing dependencies, download artifact and run webserver on each OS. So, if statment is used. ```Sudo apt help``` was run, ```$?`` to check the exit status of the last command, so, if this was true it will run for Ubuntu18 and complete the process if false, it will run for CentOS7 and CentOS8.

- **16_webdeploy.sh:** Script that deploy 15_multiple_OS.sh to each of my linux server and run the scrit on each of them using if statement and ```scp``` command.

### Aknowledgment

All artifact are downloaded from www.tootemplate.com
Please, patronize www.tootemplate.com, they have awesome html and css sample website templates
## Purpose

This is for learning purpose only.

