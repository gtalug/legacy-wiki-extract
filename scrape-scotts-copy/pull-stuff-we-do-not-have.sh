#!/bin/bash
TARGET=wiki-pages-raw

# Note that the wget requires that there be a tunnel (e.g. - such as
# generated via SSH tunnelling) set up to point localhost:8081 to a
# live copy of the wiki

# Revise set of pages based on current state
(echo "Main_page"; cat ${TARGET}/*.html | ./scrape-pages-from-wiki.sh | sort | uniq) > all_pages

for page in `cat all_pages | sort | uniq`; do
    if [ -e ${TARGET}/${page}.html ]; then
	echo "already got ${TARGET}/${page}"
    else
	wget -O ${TARGET}/${page}.html "http://localhost:8081/wiki/${page}"
    fi
done


