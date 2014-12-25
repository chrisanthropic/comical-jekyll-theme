---
layout: page
title: "basics"
permalink: /documentation/basics.html
---
**Basics**

For things to work properly you'll need to do the following:

* **config.yml** - permalink settings of "permalink: /:categories/:title/" are expected
* **categories** - add "categories: name-of-comic" to your yml front matter for comics/posts. Add a single category that reflects the name of your comic.

**Front Page**

The main page will always show the most recent comic and will autopopulate the navigation for next/previous/archives.
You can disable the sidebar by adding "sidebar:false" to the yml frontmatter.

**Character Bios**

This page uses Jekyll's data feauture to populate the page.
It offers the following data inputs:

* Character Name
* Character Image
* Characater Bio

Edit _data/characters.yml to fit your needs and it will autopopulate the character bios page.

**Thumbnail Archive**

In order to use the thumbnail archive page you'll need to add "thumbnail: /path/to/thumb.jpg" to the yml front matter for your comic posts. 

The _includes/category.html template will automatically pull the thumbnails from the posts and display them.

**About Page**
This page uses Jekyll's data feauture to populate the page. I feel like I'm abusing it's intended purposes, but it works nicely.

It offers the following data inputs for information about the comic:

* **pic:** "/path/to/image.jpg"
* **tagline:** "tagline of the comic."
* **blurb:** "Summary of the story. Displayed in italics."
* **misc:** "anything else you want to mention after the blurb."
* **important:** "listed at the end, in bold"
* **amazon:** "link to your comic on amazon"
* **comixology:** "link to your comic in comixology"
* **drivethru:** "link to your comic on DriveThruComics"
* **gumroad:** "link to your comic on gumroad"

It offer the following data inputs for information about the creators:

* **title:** "author/artist/cook/etc"
* **pic:** "/path/to/image.jpg"
* **info:** "bio stuff to make you sound interesting"
* **twitter:** 
* **facebook:**
* **tumblr:**
* **googleplus:**
* **web:**

**Thumbnailer**

A thumbnailer plugin is icluded by default. You'll need to add this to your config.yml:

```
# Autogenerate thumbs for comics
mini_magick:

#Create Thumbs for the Archive Page
    thumbnail:
      source: images/comics/
      destination: /images/comics/thumbs
      resize: "182x280"

#Autogenerate smaller size for small screens
    small:
      source: images/comics/
      destination: /images/comics/small
      resize: "350x535"
```

This will create 2 sizes of 'thumbnails' from any images in the `/images/comics` directory:

* thumbs is used for the thumbnail archive page
* small is used for smaller sized screens instead of using the full sized image
  * this makes loading times faster and saves on bandwidth, it's the same technique we use for our banner image

**SEO**

* Google Analytics (optional)
  * just add your `google_universal_analytics` ID to the config.yml file
* Facebook Opengraph
  Fill out the following in your config.yml

  ```
    facebook_app_id:                      #enter your App ID
    facebook_locale: en_US
    facebook_page:                        #the URL of your Facebook Page
    facebook_image:			#enter a default image (at least 200x200px) to use here for posts/pages that don't have one.	
  ```

* Twitter Cards
  Fill out the following in your config.yml

  ```
    twitter_user: 
    twitter_card: true
    twitter_image: 			 #enter a default image (at least 200x200px) to use here for posts/pages that don't have one.
  ```