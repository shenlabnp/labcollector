Instruction:

1- make sure you have Docker installed and granted access
2- download labcollector linux installation zip file (working for LabCollector 6.0) and extract the "html/" folder into the html/ folder here
3- if you have existing backup, copy that instead, and copy/softlink the mysql socket folder to the mysql_db/ folder here
4- from this folder, run "docker-compose build"
5- then "docker-compose up"

6- labcollector will be hosted on 0.0.0.0:8100
7- first installation: server name = "db" database name = "labcollector" user name = "labcollector" password = "labcollector"