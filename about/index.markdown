---
layout: default
title: about
---

<article class="row pad-lr-15">
   {% for about in site.data.about %}
    <div class="small-12 blocky">
      <img src="{{ site.baseurl }}{{ about.pic }}" alt="{{ about.title }} image" class="left">
      <h2>About the {{ about.title }}</h2>

      {% if about.web %}
	<a href="{{ about.web }}"><span class="icon-home socials"></span></a>
      {% endif %}  
      {% if about.twitter %}
	<a href="https://twitter.com/{{ about.twitter }}"><span class="icon-twitter socials"></span></a>
      {% endif %}
      {% if about.facebook %}
	<a href="https://facebook.com/{{ about.facebook }}"><span class="icon-facebook socials"></span></a>
      {% endif %}
      {% if about.tumblr %}
	<a href="http://{{ about.tumblr }}.tumblr.com"><span class="icon-tumblr socials"></span></a>
      {% endif %}    
          
      {% if about.info%}
	<p>{{about.info }}</p>
      {% endif %}
      {% if about.tagline %}
	<p>{{ about.tagline }}</p>
      {% endif %}
      {% if about.blurb %}
	<p><em>{{ about.blurb }}</em></p>
      {% endif %}
      {% if about.misc %}
	<p>{{ about.misc }}</p>
      {% endif %}
      {% if about.misc %}
	<p><strong>{{ about.important }}</strong></p>
      {% endif %}
      
      {% if about.comixology %}
	<a href="{{ about.comixology }}"><span class="icon-comixology socials"></span></a>
      {% endif %}
      {% if about.amazon%}
	<a href="{{ about.amazon }}"><span class="icon-amazon socials"></span></a>
      {% endif %}
      {% if about.drivethru%}
	<a href="{{ about.drivethru }}"><span class="icon-drivethru socials"></span></a>
      {% endif %}
      {% if about.gumroad%}
	<a href="{{ about.gumroad }}"><span class="icon-gumroad socials"></span></a>
      {% endif %}
      
    </div>
  {% if about.hr %}
    <br />
    <hr />
  {% endif %}
    <br />
   {% endfor %}
</article>