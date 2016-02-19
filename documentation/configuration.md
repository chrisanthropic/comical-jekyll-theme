---
layout: page
title: "configuration"
permalink: /documentation/configuration.html
--- 
* Edit your config.yml file
  * Change the title and description at a minimum.
* Update your navigation 
  * edit the `_data/nav.yml` file as needed
* Update your social links
  * edit the `_data/socials.yml` file as needed
* Update your about page
  * edit the `_data/about.yml` file as needed
* Update your characters page
  * edit the `_data/characters.yml` file as needed
* For google analytics just add your google_universal_analytics ID to the _config.yml file

## How to add a new comic series or change the default from "A Fistful of Lunars"

* Rename the `_posts/a-fistful-of-luanrs` directory
* Make sure your post yaml front matter has a 'categories' section with the same category as the folder.

* If you want to create a new 'archives' page for that category then modify the yaml front matter of the `a-fistful-of-lunars/index.html` file:
    * Update the `title` and `category` as needed.
    * Visit /your-urls/name-of-category
    
* Modify the _data/nav.yml `'archives href'`
