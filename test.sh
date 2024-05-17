#!/bin/sh

for a in ./option/*
do
config="${a##*/}"
config_name="${config%.cfg}"

for b in ./tests/bin/*
do

	echo "$b"
	benchmark="$b"
	filename=$(basename "$b")

	./sim-outorder -config $a $benchmark > ./result/"${config_name}_${filename}"

done
done

