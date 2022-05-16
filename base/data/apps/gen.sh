#!/bin/sh
rm content.html
for D in $(ls data)
do
	echo $D
	sed "s/NAME/$D/g" part.html >> content.html
done
