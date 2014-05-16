source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
#export JRUBY_OPTS=--1.9

# Use jquery as the JavaScript library
gem 'jquery-rails'
#gems for simple_form

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'country_select', '~> 1.3.1'
gem 'simple_form', '~> 3.0.2'

group :development, :test do
  gem 'rspec-rails', '~> 2.14.2'
  gem 'rspec', '~> 2.14.1'
  
  gem 'faker', '~> 1.3.0'
  gem 'mysql2'
end

group :test do
  gem 'factory_girl', '~> 4.4.0'
end

group :production, :staging do
  #for heroku deployment
  gem 'rails_12factor'
  gem 'pg'
end
