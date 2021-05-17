# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'active_model_serializers', '~> 0.10.12'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'jbuilder', '~> 2.10.1'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
gem 'pg', '~> 1.2.3'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

group :development, :test do
  gem 'byebug', '~> 11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop', '~> 1.6.1', require: false
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring', '~> 2.1.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
