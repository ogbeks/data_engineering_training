#!/bin/bash

if [ -f $1 ]
then 
   echo This is a file.
elif [ -d $1 ]
then 
   echo This is a directory.
else
   echo "Can't say."

fi
