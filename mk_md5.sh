#!/bin/sh

if [ "$1" = "" ]; then
echo "Use filename"
exit
fi

m=`md5sum $1`

dir=md5/${m:0:2}/${m:0:32}

mkdir -p $dir
mv $1 $dir/

echo "#$1" > $1.md
echo "" >> $1.md
echo "###" >> $1.md
echo "" >> $1.md
echo "https://github.com/hasq/bin/raw/master/md5/${m:0:2}/${m:0:32}/$1" >> $1.md

exit
