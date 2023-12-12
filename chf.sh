#!/bin/sh
if [[ $# -gt 2  || $# -lt 2 ]];then
        echo "Usage: ./hcf.sh num1 num2"
    exit 1
elif [ $2 -eq 0 ];then
          echo "Exception: division by 0"
          exit 2
else
q=$1
if [ $2 -lt $1 ];then
q=$2
fi
while [ $q -ne 0 ]
do
a=`expr $1 % $q`
b=`expr $2 % $q`
if [ $a -eq 0 -a $b -eq 0 ]
then
echo "$q"
break
fi
q=`expr $q - 1`
done
fi
exit 0
