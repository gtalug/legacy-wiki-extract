Legacy GTALUG Wiki material

We used to have LOTS of material in a MediaWiki instance that went
away somewhere around 2010.

Here are scripts to pull copies from WayBackMachine so we continue to
have something.

scrape-pages-from-wiki.sh looks at all the HTML files in this
directory, and searches for tags that look like tlug Wiki page.

pull-stuff-we-do-not-have.sh looks at WayBackMachine, looking for any
pages not yet pulled.

Run pull-stuff-we-do-not-have.sh repeatedly, and it will draw in
everything.

