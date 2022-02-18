#!/bin/sh

section="Getting Started"
title=$1
if [ $# -gt 1 ]; then
	section=$1
	title=$2
fi

cat tutorial_cover.svg | sed "s/Getting Started/${section}/g" | sed "s/Hello World/${title}/g" > cover.svg
convert cover.svg -resize 1920x1080 cover.png
rm cover.svg

