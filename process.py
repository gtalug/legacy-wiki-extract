"""
This is ugly becuase it was done quickly.

Requirments:

* BeautifulSoup: <http://www.crummy.com/software/BeautifulSoup/>
* python-slugify: <https://github.com/un33k/python-slugify>

TODO:

* Rewrite intrnal links to point to itself
* Filter out MediaWiki stuff
* Write to a Assemble like page syntax
"""

import os
import glob

from slugify import slugify
from bs4 import BeautifulSoup

def process_page(page):
    with open(page, 'r') as f:
        html_doc = f.read()
    
    soup = BeautifulSoup(html_doc, 'html.parser')
    
    body_content = soup.find(id='bodyContent')
    
    file_name, file_ext = os.path.splitext(os.path.basename(page))
    
    new_file_name = slugify(file_name) + file_ext
    new_file_path = os.path.join('./legacy-pages-processed/', new_file_name)
    
    with open(new_file_path, 'w') as f:
        f.write(str(body_content))

def main():
    wiki_pages = []

    for wiki_page in glob.glob('./legacy-pages-raw/*.html'):
        wiki_pages += [wiki_page,]
    
    for page in wiki_pages:
        process_page(page)

if __name__ == "__main__":
    main()
