#!/bin/bash
echo "Please Enter Database Name :";
read DBname;

if  [[ $DBname =~ ^[a-zA-Z]+$ ]]
then
export $DBname;
    if [ -d $Path/$DBname ]
    then 
    echo "Sorry Database is already exists";
    else
    mkdir $Path/$DBname;
    echo "Database Created Successfully";
        sleep 2;
     read -p "Do You Want Create Tables [y\n]? " c
        case "$c" in 
        y|Y ) sleep 2 ; . ./createTB.sh;;
        n|N ) echo "no" ; sleep 2 ; . ./main.sh;;
        * ) echo "invalid";;
        esac
    fi;
else
    echo "Sorry Database Name Must Be Only Alpha!!";
    sleep 2;
    . ./createDB.sh;
fi;