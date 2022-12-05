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
