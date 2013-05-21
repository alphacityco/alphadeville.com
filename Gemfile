source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# admin
gem 'activeadmin'

# system
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'jquery-rails'
  gem 'backbone-on-rails'  
end

group :development do
  gem 'sqlite3'
  gem 'heroku_san'
  gem 'sitemap_generator'
end

group :production do
  gem 'pg'  
end
