#!/usr/bin/env bash

downurls () {
    while read sitemaplink; do
        curl -s $sitemaplink | grep https | sed 's/^.*<loc>//' | sed 's/<\/loc>.*$//'
    done
}

curl -s https://h2g2.club/sitemap.xml | grep https | sed 's/^ *<loc>//' | sed 's/<\/loc>//' | downurls
