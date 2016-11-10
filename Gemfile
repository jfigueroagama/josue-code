source 'https://rubygems.org'

ruby '2.2.2'

# Gems needed only during asset compilation time
group :assets do
  gem 'asset_sync'
end

# Gems needed only during unit testing.
group :development, :test, :rspec do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rails-erd'
  gem 'faker'
  gem 'pry-rails'
end

group :test, :rspec do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'mocha'
end

# Gems needed only during deployment time
group :deploy do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
  gem 'capistrano-resque', "~> 0.2.2", require: false
  gem 'rvm1-capistrano3', :require => false
end

# Gems needed only in development environment 
group :development do
  gem 'annotate'
  gem 'quiet_assets'
end

# Gems needed in any other Rails environment
group :development, :test, :production do
  gem 'rails', '4.2.5.1'
#  gem 'sshkit', '1.7.1'
  gem 'thin'
  gem 'eventmachine'
  gem 'CFPropertyList'
  gem 'therubyracer', :platform => :ruby
  gem 'jquery-rails'
  gem 'turbolinks'
  gem 'jbuilder'
  gem 'net-http-spy'
  gem 'gon'
  gem 'aasm'
  gem 'application_configuration'
  gem 'paperclip'
  gem 'aws-sdk'
  gem 'sunspot_rails'
  gem 'sunspot_solr'
  gem 'devise'
  gem 'devise-i18n'
  gem 'omniauth'
  gem 'activeadmin', github: 'activeadmin'
  gem 'kaminari'
  gem 'cancancan'
  gem 'garb'
  gem 'unicorn'
  gem 'unicorn-worker-killer'
  gem 'newrelic_rpm'
  gem 'rest-client'
  gem 'resque'
  gem 'resque-scheduler'
  gem 'browser'
  gem 'git', :git => 'https://github.com/schacon/ruby-git.git'
  gem 'mysql2'
  gem 'awesome_print'
  gem 'rack-mini-profiler'
  gem 'dalli'
  gem 'validates_zipcode', '0.0.7'
  gem 'rb-readline'
  gem 'uglifier'
  gem 'dotenv-rails'
  gem 'immigrant'
  gem 'activeresource'
  gem 'activeresource-response'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'prawn'
  gem 'prawn-table'
  gem 'haml-rails'
end
