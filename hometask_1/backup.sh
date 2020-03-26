#!/bin/bash
date=`date +%Y-%m-%d`
findFile=`find $1 -mtime -1`
if [ ! -d $2/${date} ] 
then 
  mkdir $2/${date} 
  chmod 777 $2/${date} 
fi
for file in ${findFile}
do 
 cp -r $file ${date}
done
