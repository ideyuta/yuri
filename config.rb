require 'tumblargh'

activate :tumblargh,
  api_key: 'API KEY',
  blog: 'staff.tumblr.com'

set :css_dir, 'css'
set :js_dir, 'js'

# Build-specific configuration
configure :build do
end
