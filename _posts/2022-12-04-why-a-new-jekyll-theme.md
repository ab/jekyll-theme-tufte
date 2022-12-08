---
title: Why a new Jekyll theme?
layout: post
---

When I set out to choose a theme for my revamped personal blog, I hoped for something with a book-like literary feeling. So first I keyed in a search for `jekyll literary theme`.

This turned up dozens of grade school guides to understanding the themes and motifs of *The Strange Case of Dr. Jekyll and Mr. Hyde*. Whoops!

Next I searched for `jekyll literary theme CSS`. This turned up results including
[*tufte-jekyll*](https://github.com/clayh53/tufte-jekyll)
and
[*tufte-css-jekyll*](https://github.com/sdruskat/tufte-css-jekyll).
Now we're talking!

But unfortunately, both of these themes are classic-style Jekyll themes, where the installation process is to spew the theme files all over your site folder. I wanted a clean separation between the theme files and my own site files, which can only be done with a gem-packaged theme.

First I began to wrap *tufte-css-jekyll* with gem packaging. Then I found a few things here and there that I wanted to tweak. I didn't like the look of the navbar angle brackets. The `<hr>` in the footer felt slightly off. I wanted a blog post list page that shows only titles, not excerpts.

Before I knew it, this had turned into a proper yak shave, but I'm pretty happy with the results! {% sidenote 'yak-shave' 'Origins of the term *yak shaving* via the [MIT AI lab](https://projects.csail.mit.edu/gsb/old-archive/gsb-archive/gsb2000-02-11.html)' %} {% sidenote 'yak-shave-gif' 'See also the famous [Malcom in the Middle scene](https://www.youtube.com/watch?v=AbSehcT19u0)' %}
