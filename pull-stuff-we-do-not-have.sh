#!/bin/bash
echo "Main_page" > all_pages

for page in `cat all_pages | sort | uniq`; do
    if [ -e ${page}.html ]; then
	echo "already got ${page}"
    else
	wget -O ${page}.html "https://web.archive.org/web/20100204092254/http://tlug.ss.org/wiki/${page}"
    fi
done

## And revise the set of available pages
cat *.html | ./scrape-pages-from-wiki.sh > all_pages
