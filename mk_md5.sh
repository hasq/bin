#!/bin/sh

if [ "$1" = "" ]; then
echo "Use filename"
exit
fi

m=`md5sum $1`

dir=${m:0:2}/${m:0:32}

mkdir -p $dir
mv $1 $dir/

exit
