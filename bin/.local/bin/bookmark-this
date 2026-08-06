#!/bin/sh
# this is a simple example script that demonstrates how bookmarking plugins for
# newsboat are implemented
# (c) 2007 Andreas Krennmair
# (c) 2016 Alexander Batischev

url="$1"
title="$2"
description="$3"
feed_title="$4"

mkdir -p "${HOME}/documents/articles"
printf "\n%-10s | %-80s | %-80s" "$(date +%F)" "${title}" "${url}" >> ~/documents/articles/bookmarks.txt
