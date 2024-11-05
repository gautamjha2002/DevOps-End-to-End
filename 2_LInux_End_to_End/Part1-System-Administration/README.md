# Linux

- Linux is an open-source operating system based on Unix
- It is known for its security, flexibility.

## History of Linux
- Created by Linus Torvalds in 1991.
- The name **"Linux"** comes from Linus + Unix.

## Unix 
Unix is a powerful, multicluster, multitasking operating system originally developed in the 1970s at AT&T's Bell Labs, Which serves as the foundation for many modern operating systems. 

## Linux vs Unix 
 Unix is licensed and Linux is Open Sourced. 

Linux is inspired by Unix and is designed to be Unix-like. It follows many of the same principles and standards, making it compatible with Unix software and commands. 

## Linux is not an OS 

- Linux is an open-source kernel. 
- A kernel is the core part of an operating system, managing system resources and communication between hardware and software. 

## Linux Distributions (Distros)

An operating system made from a software collection which includes the linux kernel and often a package management system.   
for ex :-   
- Ubuntu  
- RedHat OS  
- CentOS

## Key features of linux
* **Open Source:** Source code is freely available and can be modified.
* **Multiuser:** Multiple users can access system resources simultaneously
* **Multitasking** Can run multiple tasks simultaneously.
* **Security** Strong security features and regular updates. 
* **Portability** Can run on various hardware platforms. 
---
# Access Linux servers/Machine using SSH

we can use SSH (Secure shell) to acccess linux machine remotly 

**Command :-** `ssh user@IP_Address`  
- for example :- let's say we want to access a ubuntu server with user gautam whose IP address is 5.99.154.2  
- then we can use command `ssh gautam@5.99.154.2`
---
# Copy file from One Server to Another

- We can use scp or rsync to copy file from one server to another.  
- `scp` and `rsync` are both powerful commands for transferring files between servers over a network, but they have some differences in functionality and use cases. 
---
1. `scp` (Secure copy protocol)  
scp is a basic command to securely copy files and directories from one machine to another over SSH. It’s simple to use but doesn’t support advanced features like incremental file transfers.
**Syntax**   
`scp [options] source_file [user@]host:destination_path`

**Common Options**
* -r: Recursively copy directories.
* -P port: Specify the SSH port to use.
* -C: Enable compression during transfer.
* -i identity_file: Specify the SSH key file.

**Examples** 
1. Copy a file to a remote server   
`scp file.txt user@remote_host:/remote/directory`

2. Copy a directory to a remote server  
`scp -r /local/directory user@remote_host:/remote/directory`

3. Copy a file from a remote server to the local machine  
`scp user@remote_host:/remote/file.txt /local/directory`  

4. Use a specific SSH port  
`scp -P 2222 file.txt user@remote_host:/remote/directory`
---

2. `rsync` (Remote Sync)  
`rsync` is a more flexible command for copying and syncing files and directories. It supports incremental transfers, meaning it only transfers the changed parts of files, which saves time and bandwidth.

**Syntax**  
`rsync [options] source [user@]host:destination`

**Common Options**
* -r: Recursively copy directories.
* -a: Archive mode, preserving permissions, timestamps, symbolic links, etc.
* -v: Verbose mode.
* -z: Enable compression during transfer.
* --progress: Show progress during transfer.
* -e ssh: Use SSH for data transfer.
* --delete: Delete files on the destination that don’t exist on the source.

**Examples** 

1. Copy a file to a remote server  
`rsync -avz file.txt user@remote_host:/remote/directory`
2. Copy a directory to a remote server with progress shown  
`rsync -avz --progress /local/directory user@remote_host:/remote/directory`
3. Copy from a remote server to the local machine  
`rsync -avz user@remote_host:/remote/file.txt /local/directory`
4. Sync a directory and delete files on the destination that don’t exist on the source  
`rsync -avz --delete /local/directory/ user@remote_host:/remote/directory/`
---
