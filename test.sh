#!/bin/bash

#Script Inputs
SourcePath=$1
 
cd $SourcePath
 
SourceDirSize= $(VAR=`du -shb . | awk '{print $1}'`; VAR2=$(for i in `ls -l | grep '\->' | awk '{print $11}'`; do du -shb $i; done | awk '{total +=$1}; END { print total }';) ; if [ ! -z $VAR2 ] ; then  expr $VAR + $VAR2; else echo $VAR; fi)

echo $SourceDirSize
#new change1
#new change2
echo $SourceDirSize
