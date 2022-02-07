#!/bin/sh

#echo -n "latest$1,`git describe --tags | grep -ioP '\d+.\d+.\d+' | head -1`$1,`git describe --tags | grep -ioP '\d+.\d+' | head -1`$1,`git describe --tags | grep -ioP '\d+' | head -1`$1"
echo -n "latest$1,`echo $2 | grep -ioP '\d+.\d+.\d+' | head -1`$1,`echo $2 | grep -ioP '\d+.\d+' | head -1`$1,`echo $2 | grep -ioP '\d+' | head -1`$1"
