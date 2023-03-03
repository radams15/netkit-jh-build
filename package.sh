#!/bin/bash

OUT=dist

rm -rf $OUT
mkdir -p $OUT

for folder in core fs kernel
do
	tar -C $folder/build/ -cjSf $OUT/$folder.tar.bz2 netkit-jh/
done

cp build/*.sh $OUT/install-netkit.sh

sha256sum $OUT/* > $OUT/release.sha256
