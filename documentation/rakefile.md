---
layout: page
title: "rakefile"
permalink: /documentation/rakefile.html
--- 
Includes the following custom tasks:

* *optimizeimages* - uses minimagick to compress and optimize all images in the /images folder.
* *minify_html* - uses HTML_compressor to minify HTML
* *notify* - pings google and bing to notify them about changes to the site/sitemap

These 3 tasks have been bundled into custom build and deploy tasks

* *build* - runs `jekyll build` and then `optimize images` followed by `minify_html`
* *deploy* - runs `s3_website push` and then `notify`