#!/bin/sh
git submodule init && git submodule update

for module_dir in buildroot kernel software uboot
do
	cd module_dir
	git checkout master
	cd ..
done
