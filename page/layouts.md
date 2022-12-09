---
layout: page
full_width: true
nav_title: Layouts
title: Available Page Layouts
weight: 4
---

The *jekyll-theme-tufte* includes two layouts by default. Choose your layout in the YAML front matter at the top of the file, which is where Jekyll expects to find page metadata.

* Use `layout: post` for blog posts.
* Use `layout: page` for standalone Jekyll pages.
* Use `layout: blog-list` for the listing of all blog posts.

The default layouts are half width to allow room for sidenotes. Set `full_width: true` in the front matter to make the body content run the full width of the page instead. (This page you're reading is full width.)

Jekyll pages will appear in the navbar by default. (Set `nav_exclude: true` to hide.)

### Configuration options

These custom variables may be set in YAML front matter of each page to change various behavior:

- `nav_exclude: true` --- Don't show the page in the nav.
- `weight: 123` --- Set the order of pages in the nav.
- `head_title: foo` --- Use "foo" as the `<title>` text in the page `<head>`.
- `nav_title: bar` --- Use "bar" as the link text in the nav, overriding `title`.
- `full_width: true` --- Make the page body full width instead of half.

For example, the front matter for this page looks like this:

```yaml
---
layout: page
full_width: true
nav_title: Layouts
title: Available Page Layouts
weight: 4
---

Content here...
```

## Typography notes

This theme bundles the [*et-book*](https://github.com/edwardtufte/et-book) typeface from *tufte-css*.

### Lining numerals

By default, we use lining numerals with uniform height. This is good for tables.

> We zeroed in on 1,234 cases out of 5,678 candidates in the last 90 days.

### Old-style numerals
Add the `.numeral` CSS class to any element to use old-style numerals.
This is good for numbers in text.

> We zeroed in on 1,234 cases out of 5,678 candidates in the last 90 days.
{: .numeral}

### Ligatures not enabled

There is a version of *et-book* available upstream that includes ligatures
(e.g. making the "ffi" in traffic one connected glyph), but I found that it
reduces legibility, so it is not included here.
