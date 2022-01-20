# starting_with_plsql
This repo has been created to record my knowledge acquired of Oracle PL/SQL querying.


# Running oracle-xe Docker Container

### Environment Requirements
Inside docker folder there is a docker-compose.yml file, this file contains instructions for docker-compose to provide a oracle-xe 11g database service using the oracleinanutshell/oracle-xe-11g:latest image.

To turn up this docker container you must have docker and docker-compose installed on your computer.

Usually docker-compose already comes with docker installation, otherwise you can check it with the command docker-compose -v, it must return the docker-compose version.

If it doesn't return the docker-compose version you must install it, you can install it with the command below:
pip install docker-compose.

### Running the Container

With all the requirements above we are ready to run our docker container.

Go to the docker folder with the docker-compose.yml file inside and execute the command below.

docker-compose up

At the end of the execution we can connect to the database using the credentials below

user: system
password: oracle


### Unlocking HR Scheme

Oracle-xe comes with a set of tables of a Human Resource department system, we can access these tables with the system user, but if you want to use the HR user you've to unlock the user with the command below.

ALTER SYSTEM HR IDENTIFYED BY '_PASSWORD_' ACCOUNT UNLOCK.


