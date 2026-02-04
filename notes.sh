############################################################
# UNIX + GIT + NODE.JS COMPLETE PRACTICAL FILE
# Name: Abhay Kaushal
# Purpose: Academic Submission
############################################################


############################################################
# WEEK 1 – UNIX BASICS
############################################################

# Kernel = Core of Operating System (handles memory, CPU, devices)
# Shell = Interface between user and kernel (accepts commands)

# CLI = Command Line Interface (terminal)
# GUI = Graphical User Interface (mouse based)

# File System Hierarchy
# /      -> Root directory
# /home  -> User folders
# /bin   -> System commands
# /etc   -> Configuration files
# /var   -> Logs & variable files

# Absolute Path: Starts from root
# Example: /home/user/file.txt

# Relative Path: Starts from current directory
# Example: ../file.txt

# Hidden files start with dot (.)
# inode stores file metadata (size, owner, permissions)

############################################################
# BASIC UNIX COMMANDS
############################################################

pwd             # shows present working directory
ls              # lists files
cd ..           # move back one folder
mkdir demo      # create directory
rmdir demo      # delete empty directory
touch file.txt  # create empty file
cat file.txt    # display file content
less file.txt   # view file pagewise
man ls          # manual for ls command


############################################################
# ADVANCED UNIX COMMANDS
############################################################

grep "root" /etc/passwd     # search word root

find . -name "*.txt"       # find all txt files

chmod 755 file.txt         # change file permission

chown user:user file.txt  # change file ownership

echo "Hello World" > test.txt   # write text into file

cat test.txt | grep Hello       # pipe output to grep

sleep 10 &               # run process in background

ls > output.txt          # redirect ls output to file


############################################################
# WEEK 2 – BASH SCRIPTING
############################################################

# Variable example

name="Abhay"
echo "Hello $name"


# Loop example

for i in {1..5}
do
 echo $i
done


# Conditional example

num=10

if [ $num -gt 5 ]
then
 echo "Number is Greater"
else
 echo "Number is Smaller"
fi


############################################################
# GIT FUNDAMENTALS
############################################################

git init                    # initialize repository
git clone URL              # copy remote repo
git add .                  # stage files
git commit -m "first"      # save snapshot


############################################################
# GIT INTERNALS
############################################################

git status                 # repo status
git diff                   # show changes
git log                    # commit history
git reset --hard HEAD~1   # rollback commit


############################################################
# WEEK 3 – GIT BRANCHING
############################################################

git branch                 # list branches
git checkout -b feature   # create new branch
git merge feature         # merge branch
git rebase main           # rebase branch


############################################################
# JAVASCRIPT RUNTIME (Single Thread Example)
############################################################

console.log("Start");     // executes first

setTimeout(() => {
  console.log("Async Task");   // non blocking
}, 2000);

console.log("End");       // executes immediately


############################################################
# WEEK 4 – NODE.JS
############################################################

# package.json – Node project config

{
  "name": "node-lab",
  "version": "1.0.0",
  "main": "app.js"
}


############################################################
# app.js
############################################################

console.log("Node App Running");


############################################################
# fs-sync.js (Synchronous File Write)
############################################################

const fs = require("fs");

fs.writeFileSync("sync.txt", "Hello Sync");


############################################################
# fs-async.js (Asynchronous File Write)
############################################################

const fs = require("fs");

fs.writeFile("async.txt", "Hello Async", () => {
 console.log("Done");
});


############################################################
# GITHUB PUSH COMMANDS
############################################################

git init
git add .
git commit -m "Unix Git Node submission"
git remote add origin https://github.com/YOUR_USERNAME/unix-lab.git
git branch -M main
git push -u origin main
