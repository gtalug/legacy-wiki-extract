Legacy GTALUG Wiki material

We used to have LOTS of material in a MediaWiki instance that went
away somewhere around 2010.

Here are scripts to pull copies from WayBackMachine so we continue to
have something.

scrape-pages-from-wiki.sh looks at HTML, searching for tags that look
like TLUG Wiki pages.

pull-stuff-we-do-not-have.sh searches for such pages at
WayBackMachine, looking for any pages not yet pulled.

Run pull-stuff-we-do-not-have.sh repeatedly, and it will draw in
everything.

Raw pages are dropped into legacy-pages-raw, and that form should be
left alone.

When they are rewritten to do such things as:
  - Fixing linkages to be references inside this site rather than to
    wayback machine
  - Adding GTALUG disclaimers
  - Removing WayBack disclaimers
the results should be put elsewhere.

