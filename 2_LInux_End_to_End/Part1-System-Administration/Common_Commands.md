# Some common commands in Linux


1. How to check you current location ? 
- `pwd`
2. How to display name of your current logged in user ?
- `whoami`
3. How to check system date and time?
- `date`
- `date +%D` for date
- `date +%T` for time
- `date +%H:%M` for current time in hours and minute 
4. HOw to display files and directory present in current location 
- `ls` 
- `ls -l` for long listing
- `ls -lt` for getting last modified time also 
- `ls -lh` for long listing with human readable format
5. How to clear linux terminal ?
- `clear`
- `ctrl +l`
6. How to display content of file on terminal 
- `cat <filename>`
7. How to read a file and search for a word 
- `less <filename>` 
- use forward slash and word which want to search `\<search keyword>` and press `n` to jump to next occurance of same keyword
- use `shift + g` to move directly to last line
- use `b` to move back to first line
- use `q` to quit editor
8. HOw to view content of a file page by page ?
- `more <file>`
- use `arrow key` to move up and down page by page 
- use `q` to quit
- more prints on terminal instead of editor 
9. How to create a file in linux ?
- `touch <filename>`
10. How to delete a file in linux ?
- `rm <filename>`
11. How to edit a file in linux ?
- `vi <filename>
- we will discuss file editing via vi later
- `nano <filename>`
-  we will discuss nano later
12. How to create a Directory/Folder in Linux ?
- `mkdir <folder name>`
13. HOw to delete a folder/directory in Linux ?
- `rmdir <folder-name>`
- `rm -rf <folder-name>`
14. How to change path or move to another folder in Linux ?
- `cd /path/to/folder`
- `cd ..` to go back one step
- `cd -` to move to folder which we were preveiously in.
15. How to copy and paste a file from one folder to another in Linux ?
- `cp <file> /dest/path`
16. How to copy content of a file to another file in Linux ?
- `cp fileA fileB`
17.  How to cut paste a file from one folder to another in Linux ?
- `mv <file> /dest/path`
18. How to rename a file in Linux ?
- `mv <old-file-name> <new-file-name>`
19. How to Display top 5 lines in Linux ?
- `head -5 <file-name>`
20. How to display last 5 line of file ?
- `tail -5 <file-name>`
21. How to sort the content from a file in Linux ?
- `sort <file-name>`
- `sort -r <file-name>` for reverse sorting
22. How to display unique content from a file in Linux ?
- `sort <file-name> | uniq`
23. A file has 9 lines. How to split this file in 3 different files in Linux ?
- `split -l 3 <file-name>`
24. HOw to search a word and display matching content from a file in Linux?
- `grep "word" <file-name>`
25. How to search multiple words and display matching content from a file in Linux ?
- `egrep "word1|word2" <file-name>`
26. How to use wildcards in Linux * [] {}?
- `ls file*`
- `touch file{1..5}`
27. How to shuffle content of file in Linux ?
- `shuf <file-name>`
28. How to count number of lines in a file in linux ?
- `wc -l <file-name>`
29. How to check if two files are identical or not in Linux ?
- `cmp <fileA> <fileB>`
30. How to compare and display difference between two files in Linux ?
- `diff -u fileA fileB`
31. How to find a file in Linux ?
- `find /path/ -name <file>`
- `updatedb` && `locate <file-name>`

32. How to display previously used commands in past ?
- `history`
33. How to check syntax and options available for a command ?
- `<command> --help`
34. How to read or get more infor about a command ?
- `man`
35. How to check wich executable is being used by the command ?
- `which <command>`
36. How to use a calculator in linux ?
- `bc`
37. How to check calander in Linux ?
- `cal` 
- `cal <year>`
- `cal <MONTH> <YEAR>`
38. How to check how long server has been running in Linux ?
- `uptime`
37. How to record your activity on terminal in a file ?
- `script`
38. How to create a short-cut of a long comand in Linux (alias)?
- `alias l="ls -ltr"`
- `alias -p` To check existing alias
39. How to compress a file in Linux?
- `gzip -k <file-name>` To keep original file and create a new compressed file
- `gzip -d <file-name.gz>` or `gunzip <file-name.gz>` To decompress a file in Linux
40. How to compress a folder in Linux ?
- `tar -czf myfolder.tar.gz myfolder/`
- `tar -xzf <myfolder.tar.gz>` To decompress a folder
41. How to compress multiple files in one zipped files in Linux ?
- `zip myfiles.zip file1 file2`
- `unzip myfiles.zip` To unzip files
- `unzip -l myfiles.zip`
42. How to download a file from Internet ?
- `wget <URL OF FILE>` To download file with default name
- `wget -O <file-name> <URL OF FILE>` To download a file and save with different name
43. How to call an API on Linux ?
- `curl <http://numbersapi.com/random>`
44. How to install an application on Linux ?
- `apt` or `yum/dnf` 
- `apt install nginx` To install nginx
45. How to check if any application is installed or not in linux ?
-  `dpkg -l | grep <app-name>`
- `dpkg -l`
- `apt list --installed`
46. How to list available packages to install on Linux?
- `apt search <package_name>`
47. How to start/Stop a service on Linux?
- `systemctl start/stop service_name`
- `systemctl status service_name` TO check status of service
48. How to list all the services on Linux ?
- `systemctl list-units --type=service --all`

49. How to list all existing Environment Variables on Linux ?
- `printenv`
50. How to add a new Environment Variables on Linux ?
- `export JAVA_HOME="/usr/lib/jvm/java_v"`
- `export PATH=$JAVA_HOME/bin:$PATH`
51. How to add a new Environment Variables permanently on Linux?
- Add env variable in `~/.bashrc` file
- `source ~/.bashrc`
52. How to print a specific column froma CSV file?
- `awk -F, '{print $2}' file.csv`
- `{print $NF}` for last column
53. How to display starting 2 character of all line?
- `cut -c1-2 file.txt`
54. How to display a specific line from a file ?
- `sed -n '5p' file.txt`
55. How to replace a specific word within a file?
- `sed 's/from/to/g' file.txt`
- The changes are not permamnent
56. How to convert the content to uppercase or lowercase within a file ?
- `tr [:lower:] [:upper:] < file.txt`
- `tr -d % <test.txt` To delete % sign from test.txt file
- `tr "%" "&" < test.txt` To change % sign with & 
- Changes are not permanent

57. How to extend or shrink size of a file?
- `truncate -s 100M file.txt` change file size to 100MB 

58. How to display following line in vertical line? ABCDE
- echo "ABCDE" | fold -w1

59. How to change user in Linux ?
- `su <user-name>`
60. How to exit from current user or close the terminal. 
- `exit`
61. If you are not root user, how to execute admin commands like installing new apps?
- `sudo apt install httpd`
- use `sudo`
- you must have access to use sudo
62. Access Remote Servers
- `ssh user@IP_OF_MACHINE`
63. How to copy a file to a remore Linux srver? 
- `scp filename user@IP_OF_MACHINE:/tmp/`


64. How to check permissions of a file ?
- `ls -ltr`
- `rwx     rw    r--   -------->  user    group other`

65. How to modify permissions of a file?
- `chmod a+rwx file.txt`
- u - user, g - group, o - other
- a - all

66. How to change ownership of a file?
- `chown root file.txt`
67. How to change the group ownership of a file?
- `chgrp paul file.txt`


68. How to check free ram space 
- `free`
- `free -h` for human redable format
- `free -th` for displaying total allso in human redable format

69. How to check % Memory and CPU Utilization
- `top`

70. How to check disk utilization
- `du <folder>` 
- `du -h <folder>` for human readable format

71. How to check filesystem available and disk space allocated
- `df`
- `df -h` For human readable

72. How to check hostname 
- `hostname`

73. How to check CPU/core/Threads info of you linux server
- `lscpu`

74. How to check architecture 
- `arch`

75. How to check list of storage devices disk partition on your linux server?
- `lsblk`
76. How to see the OS name of linux server ?
- `uname -a`
- `cat /etc/os-release`
77. How to check if a process (java) is running or not ?
- `ps -ef | grep java`
78. How to get the pid of a process?
- `pgrep chron`

79. How to stop a process by PID
- `kill -9 PID`
80. How to stop a process by it's name ?
- `pkill httpd`
81. How to see all active jobs ?
- `jobs`
82. How to resume a job in background ?
- `bg`
83. How to resume a job in foreground ?
- `fg`
84. How to run a script in background ?
- `nohup ./script >/dev/null &`


85. How to check IP of your machine?
- `ifconfig`
86. How to check if a server or website is accesible or not?
- `ping www.google.com`
87. How to check if a IP:PORT is accessible and open or not?
- `telnet IP PORT`
88. How to check if a port is open or not on our server?
- `netstat -putan | grep 80`
89. How to check all hubs in network path to reach a website?
- `traceroute <website DNS`
90. How to restart linux server?
- `reboot`
91. How to shutdown linux server?
- `shutdown`
92. How to create a new user on linux ?
- `useradd <username>`
- `passwd <username>` To change password of user
93. How to create new group on your linux server?
- `groupadd`
94. How to check userid and groupid of a user ?
- `id <username>`
95. How to delete a user or group
- `userdel <user`
- `groupdel <group>`
