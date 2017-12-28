# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# Autoprefixer extension
activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# Sprockets asset compilation
activate :sprockets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

###
## Blog settings
###

activate :blog do |blog|
  blog.prefix = '/blog'
  blog.permalink = ':year/:month/:day/:title.html'
  blog.sources = ':year-:month-:day-:title.html'
  blog.taglink = 'tags/:tag.html'
  blog.layout = 'article'
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  blog.year_link = ':year.html'
  blog.month_link = ':year/:month.html'
  blog.day_link = ':year/:month/:day.html'
  blog.default_extension = 'md'

  blog.tag_template = '/blog/tag.html'
  blog.calendar_template = '/blog/calendar.html'

  blog.paginate = true
  blog.per_page = 1
  blog.page_link = 'page/:num'
end

# Setup blog feed
page '/blog/feed.xml'

# Set time zone so blog feed works properly
Time.zone = 'America/Los_Angeles'

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end
