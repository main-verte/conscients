# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'pg', '>= 0.18'
gem 'puma', '~> 3.11'
gem 'rails', '5.2.0.rc1'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'oj'
gem 'rollbar'

gem 'rails-i18n'

gem 'sidekiq'
gem 'sidekiq-failures'

gem 'friendly_id'
gem 'high_voltage'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'annotate'
  gem 'awesome_print'
  gem 'bullet'
  gem 'rails-erd'
  gem 'table_print'
  gem 'xray-rails'

  gem 'brakeman', require: false
  gem 'overcommit'
  gem 'rubocop', require: false

  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
  gem 'rack-livereload'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console', '>= 3.3.0'
end
