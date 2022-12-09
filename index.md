---
layout: page-hero
title: jekyll-theme-tufte
nav_title: About
head_title: jekyll-theme-tufte
subtitle: A modern Jekyll theme based on tufte-css
weight: 1
---

[*jekyll-theme-tufte*](https://github.com/ab/jekyll-theme-tufte) is a Jekyll
theme that implements the design ideas of Edward Tufte.
It is enabled by [*tufte-css*](https://github.com/edwardtufte/tufte-css), a
CSS file providing the Tufte-inspired styles.

This is a gem-packaged theme that can be easily installed by including
*jekyll-theme-tufte* in your `Gemfile`.

Large portions of the theme are derived from prior work to bring *tufte-css* to Jekyll, including:

* [*tufte-css-jekyll*](https://github.com/sdruskat/tufte-css-jekyll), a classic-style Jekyll theme {% sidenote 'origins' "This theme started out as a gem repackaging of *tufte-css-jekyll*, but then I decided to clean up the layout" %}
* [*tufte-jekyll*](https://github.com/clayh53/tufte-jekyll), a classic-style theme with a lot of extra visual stuff added
* [*tufte-pandoc-jekyll*](https://github.com/jez/tufte-pandoc-jekyll), a gem-style theme that uses pandoc under the hood
* [*ET-Jekyll*](https://github.com/bradleytaunt/ET-Jekyll), a classic-style theme that makes a number of CSS changes

This theme is minimalist and tries to stick closely to the original *tufte-css* styles.
As a gem-based theme, it is also easier to install and manage compared to
classic style themes. (Classic Jekyll themes are installed by mixing all the
files in with your site's files, which creates a big mess.)

Edward Tufte's style is known for extensive use of sidenotes, which *tufte-css* displays next to a half-width layout. {% sidenote "layouts" 'See [Layouts](./page/layouts) for more layout options.' %}

To read more about the Tufte style and its usage, have a look at the [Tufte CSS](./page/tufte-css) demo page.

This theme is responsive and adapts to desktop and mobile screens. (Margin notes
are displayed inline on narrow screens.) It also supports dark mode detection
via `prefers-color-scheme`, looking good on dark and light backgrounds alike.

An Atom RSS feed is provided at [`/feed.xml`]({{ site.baseurl }}/feed.xml).
