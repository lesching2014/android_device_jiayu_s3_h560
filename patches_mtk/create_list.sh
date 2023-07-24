#!/bin/sh

find . -name "*.patch" | sort | rev | cut -d'/' -f2- | rev | uniq | cut -c3- | sed '/^[[:blank:]]*$/d' > dirs-list.txt
