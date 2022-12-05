---
layout: default
title: Blog
weight: 2
full_width: true
---

<h1>Writing</h1>
<p class=subtitle>{{ site.author }}</p>
{% for post in site.posts %}{% assign currentyear = post.date | date: "%Y" %}{% if currentyear != prevyear %}
## {{ currentyear }}
{% assign prevyear = currentyear %}{% endif %}
- [{{ post.title }}]({{ post.url | prepend: site.baseurl }}) --- {{ post.date | date: '%B %-d' }}
{% endfor %}
