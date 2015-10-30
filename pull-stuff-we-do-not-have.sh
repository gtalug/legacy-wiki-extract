#!/bin/bash
TARGET=legacy-pages

# Revise set of pages based on current state
(echo "Main_page"; cat ${TARGET}/*.html | ./scrape-pages-from-wiki.sh | sort | uniq) > all_pages

for page in `cat all_pages | sort | uniq`; do
    if [ -e ${TARGET}/${page}.html ]; then
	echo "already got ${TARGET}/${page}"
    else
	wget -O ${TARGET}/${page}.html "https://web.archive.org/web/20100204092254/http://tlug.ss.org/wiki/${page}"
    fi
done


