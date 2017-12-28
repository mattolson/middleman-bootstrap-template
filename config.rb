# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

###
## Asset settings
###

# Sprockets asset compilation
activate :sprockets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Autoprefixer extension
activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

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

###
## Disqus settings
###
configure :development do
  activate :disqus do |d|
    # Set Disqus short name for local development. Read the following for more info:
    # https://github.com/simonrice/middleman-disqus#important-do-not-use-real-shortnames-during-development
    d.shortname = SecureRandom.uuid # replace with your short name for dev
  end
end

###
## Google Analytics settings
###
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-XXXXXXX-X' # Replace with your property ID.

  # Removing the last octet of the IP address (default = false)
  # ga.anonymize_ip = false

  # Tracking across a domain and its subdomains (default = nil)
  # ga.domain_name = 'example.com'

  # Tracking across multiple domains and subdomains (default = false)
  # ga.allow_linker = false

  # Enhanced Link Attribution (default = false)
  # ga.enhanced_link_attribution = false

  # Log detail messages to the console (default = false)
  # ga.debug = false

  # Trace debugging will output more verbose information to the console (default = false)
  # ga.debug_trace = false

  # Disable extension (default = false)
  # ga.disable = false

  # Testing your implementation without sending hits (default = true) in development
  ga.test = true

  # Compress the JavaScript code (default = false)
  # ga.minify = false

  # Output style - :html includes <script> tag (default = :html)
  # ga.output = :js
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
configure :build do
  activate :minify_css
  activate :minify_javascript

  # Set production settings for Disqus
  activate :disqus do |d|
    # Set Disqus short name for production. Read the following for more info:
    # https://github.com/simonrice/middleman-disqus#important-do-not-use-real-shortnames-during-development
    d.shortname = nil # replace with your short name for prod
  end
end
