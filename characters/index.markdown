---
layout: default
title: characters
---

<article class="row pad-lr-15">
  <h1>Cast of Characters</h1>
   {% for characters in site.data.characters %}
    <div class="small-12 blocky">
      <img src="{{ site.baseurl }}{{ characters.pic }}" alt="{{ characters.name }} character image" class="left">
      <h2>{{ characters.name }}</h2>
      <p>{{ characters.bio }}</p>
    </div>
    <br />
   {% endfor %}
</article>