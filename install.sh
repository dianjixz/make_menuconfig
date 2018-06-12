#!/bin/bash
if [ ""$1"" == "" ]; then
    echo "$0 <dir>"
    exit 0
fi

DIR=$1
mkdir -p $DIR
cp -rvf tiny/myconfig.mk $DIR/
cp -rvf kconfig/mconf $DIR/
cp -rvf kconfig/conf $DIR/
cp -rvf configs $DIR/
cp -rvf tiny/Kconfig $DIR/

TMFile=$DIR/Makefile
if [ ! -f $TMFile ]; then
    printf "all:\n" > $TMFile 
fi

if [ -f $TMFile ]; then
    fC=`cat $TMFile`
    if [ "$fC" = "" ]; then
        printf "all:\n" > $TMFile
    fi

    if sed -n '1,1p' $TMFile | grep myconfig.mk > /dev/null 2>&1
    then
        echo "already modify Makefile"
    else
        sed -i '1i\include '"."'/myconfig.mk'  $TMFile
        echo "modify Makefile successful"
    fi

fi

