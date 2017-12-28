# middleman-bootstrap-template

middleman-bootstrap-template is a [project template](https://middlemanapp.com/advanced/project-templates/) for the
[Middleman v4](http://middlemanapp.com/) static site generator that incorporates [Bootstrap v4](https://getbootstrap.com).

This is a sensible mobile-first starter layout for a blog. The styling is basic and based on Bootstrap with only some minor
additions, because I didn't want to make any assumptions about the design of your site. Don't judge it on its looks&mdash;this
isn't a theme, it's meant to be a flexible foundation to build on.

## Features

* [middleman-blog 4.0](https://github.com/middleman/middleman-blog)
* [middleman-sprockets 4.1](https://github.com/middleman/middleman-sprockets)
* [middleman-autoprefixer 2.7](https://github.com/middleman/middleman-autoprefixer)
* [middleman-disqus 1.2](https://github.com/simonrice/middleman-disqus) for Disqus integration
* [middleman-google-analytics 3.0](https://github.com/danielbayerlein/middleman-google-analytics) for Google Analytics integration
* [middleman-syntax 3.0](https://github.com/middleman/middleman-syntax) for code syntax highlighting
* [Twitter Bootstrap 4.0](http://foundation.zurb.com/)
* [Font Awesome 4.7](http://fontawesome.io/)
* Many elements and defaults from [HTML5 Boilerplate](http://html5boilerplate.com/)
* Automatic sitemap.xml generation on build
* A warning overlay presented to older IE browsers (< 10)

## Installation

1. Install middleman as usual. See [Middleman's documentation](https://middlemanapp.com/basics/install/) for more information.
2. `middleman init -B -T mattolson/middleman-bootstrap-template my_project`
3. `cd my_project && bundle install`
4. `middleman server`

## Removing blog functionality

This template is also a good starting point for sites that don't have a blog. To remove blog-specific stuff:

1. `git rm source/blog/*`
2. `git rm source/layouts/article.erb`
3. Remove `middleman-blog` and `middleman-disqus` from `Gemfile`.
4. Remove blog-related styles from `source/stylesheets/base.css.scss`. They are all at the bottom of the file grouped together under the header "Blog Articles".
5. Remove blog-related settings from `config.rb`. They are all grouped at the top under the header "Blog Settings".
6. Update `source/index.html.erb` (the home page) to something more relevant to your site.
