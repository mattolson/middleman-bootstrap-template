# middleman-bootstrap-template

This is a [project template](https://middlemanapp.com/advanced/project-templates/) for the excellent [Middleman](http://middlemanapp.com/)
static site generator that incorporates [Bootstrap 4](https://getbootstrap.com) and reasonable defaults for building out a blog.

## Features

* [middleman-blog 4.0](https://github.com/middleman/middleman-blog)
* [middleman-sprockets 4.1](https://github.com/middleman/middleman-sprockets)
* [middleman-autoprefixer 2.7](https://github.com/middleman/middleman-autoprefixer)
* [Twitter Bootstrap 4.0](http://foundation.zurb.com/)
* [Font Awesome 4.7](http://fontawesome.io/)
* Many elements and defaults from [HTML5 Boilerplate](http://html5boilerplate.com/)
* A warning overlay presented to older IE browsers (< 10)
* [Google Analytics](http://www.google.com/analytics/) integration
* [Disqus](http://disqus.com/) integration
* Automatic XML Sitemap creation on build
* A sensible mobile-first starter layout for a blog. You will most likely want to make numerous changes to the styling - I didn't make any assumptions about the design. Don't judge it on its looks, this isn't a theme, it is meant to be a flexible foundation to build on.

## Installation

Clone into `~/.middleman` (you'll have to create it if it doesn't exist). You can then use it with the `--template` flag on `middleman init`.

1. `mkdir -p ~/.middleman`
2. `git clone git://github.com/mattolson/middleman-zurb-template.git ~/.middleman/zurb-foundation`
3. `middleman init my_new_project --template=zurb-foundation`
4. `cd my_new_project && bundle install`
5. `middleman server`

For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/) or feel to ask me on [Twitter](http://twitter.com/ahbiscuits).

## Removing blog functionality

This template is still a good starting point for sites that don't require blogging functions. To remove blog-specific stuff:

1. `git rm source/blog/*`
2. `git rm source/layouts/article.erb`
3. Remove middleman-blog from Gemfile.
4. Remove blog-related styles from source/stylesheets/base.css.scss. They are all at the bottom of the file grouped together under the header "Blog Articles".
5. Remove blog-related settings from config.rb. They are all grouped at the top under the header "Blog Settings".
6. Update the home page (source/index.html.erb) to do something more relevant to your site.

## Examples

Two sites that I know of that use this template as a starting point (if there are more, let me know!):
* My blog: [Matt Olson](http://mattolson.com)
* My company's site: [Ruby Cloud](http://rubycloud.com)

