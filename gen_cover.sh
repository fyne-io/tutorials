#!/bin/bash

if [[ $# -eq 0 || ($# -eq 1 && "$1" == "-h" || "$1" == "--help" )]]; then
	echo "A command to generate tutorial video cover images,"
	echo "Usage:"
	echo "	$0 [section] title"
	exit 0
fi

section="Getting Started"
title=$1
if [ $# -gt 1 ]; then
	section=$1
	title=$2
fi

cat tutorial_cover.svg | sed "s/Getting Started/${section}/g" | sed "s/Hello World/${title}/g" > cover.svg
convert cover.svg -resize 1920x1080 cover.png
rm cover.svg

