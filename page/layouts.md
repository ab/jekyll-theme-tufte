---
layout: full-width
nav_title: Layouts
title: Available Page Layouts
weight: 4
---

The *jekyll-theme-tufte* includes three layouts by default. Choose your layout in the YAML front matter at the top of the file, which is where Jekyll expects to find page metadata.

* Use `layout: post` for blog posts.
* Use `layout: page` for standalone Jekyll pages.
* Use `layout: full-width` to make either page or post with a full width body (no space for sidenotes).

### Navbar Behavior

Jekyll pages will appear in the navbar by default. This can be configured with the following frontmatter variables:

- `nav_exclude: true` --- Don't show the page in the nav.
- `weight: 123` --- Set the order of pages in the nav.
- `nav_title: Sometitle` --- Use "Sometitle" as the link text in the nav, overriding `title`.

The page you're reading now uses the `full-width` layout, so the body content runs the full width of the page, leaving no room for sidenotes.

The front matter for this page looks like this:

```yaml
---
layout: full-width
nav_title: Layouts
title: Available Page Layouts
weight: 4
---

Content here...
```
