#!/bin/sh

echo -n "latest$2,`echo $1 | grep -ioP '\d+.\d+.\d+' | head -1`$2,`echo $1 | grep -ioP '\d+.\d+' | head -1`$2,`echo $1 | grep -ioP '\d+' | head -1`$2"
