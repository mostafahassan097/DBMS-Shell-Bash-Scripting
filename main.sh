#!/bin/bash

PS3="Please Enter Your Option :";
select opt in "Create Database" "List All Databases" "Connect Database" "Drop Database"
do
    case $REPLY in 
        1) . ./createDB.sh;;
        2) ls  /DBs;;
        3) . ./connectDB.sh;;
        4) . ./dropDB.sh;;
    esac
done