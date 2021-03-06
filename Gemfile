# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'awesome_print'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'committee'
gem 'devise_token_auth'
gem 'pg', '>= 0.18', '< 2.0'
gem 'prmd'
gem 'puma', '~> 3.11'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 5.2.1'
gem 'state_machines-activerecord'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.5.0'
  gem 'rspec-rails', '~> 3.7'
  gem 'rspec_junit_formatter', '~> 0.4.1'
  gem 'rubocop', '~> 0.63.1', require: false
  gem 'rubocop-rspec', '~> 1.31.0', require: false
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers',
                          branch: 'rails-5'
  gem 'webmock', '~> 3.4.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'timecop', '~> 0.9.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
