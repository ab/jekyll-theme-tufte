# jekyll-theme-tufte

## [tufte-css](https://github.com/edwardtufte/tufte-css) wrapped in a comfy Jekyll theme

*jekyll-theme-tufte* aims to closely mimic the [Edward Tufte](https://www.edwardtufte.com/tufte/)-inspired styles from [*tufte-css*](https://github.com/edwardtufte/tufte-css) ([MIT License](https://github.com/edwardtufte/tufte-css/blob/gh-pages/LICENSE)) in the framework of a [Jekyll](http://jekyllrb.com/) theme for satic pages and blog posts.

This is a gem-style theme packaging of the [tufte-css-jekyll](https://github.com/sdruskat/tufte-css-jekyll) classic-style theme, with some minor modifications. Gem-style themes are easier to work with since they don't pollute your main Jekyll folder structure.

The theme is based heavily on previous work by [Clay Harmon](http://www.clayharmon.com/), who provides [*tufte-jekyll*](https://github.com/clayh53/tufte-jekyll) ([MIT License](https://github.com/clayh53/tufte-jekyll/blob/master/LICENSE)) which also draws heavily on *tufte-css*, albeit with some stylistical deviations. In comparison, *tufte-css-jekyll* tries to stay as true to *tufte-css* as possible.

## Demo page

A demo-page can be found at [sdruskat.github.io/tufte-css-jekyll/](https://sdruskat.github.io/tufte-css-jekyll/). The page ["Tufte CSS"](https://sdruskat.github.io/tufte-css-jekyll/page/) on this site aims to reproduce the [*tufte-css* demo page](https://edwardtufte.github.io/tufte-css/).

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-tufte"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-tufte
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-tufte

## Usage

If you are new to Jekyll, check out the [Jekyll documentation](https://jekyllrb.com/docs/home/) first.

### Some theme specifics

- The **large site title (and subtitle)** can be switched on/off by setting the value for `header` in `_config.yml` to false.

- The **order of pages** in the menu can be determined by defining a `weight` for the pages.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ab/jekyll-theme-tufte. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development of the theme

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-tufte.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
