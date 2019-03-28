source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'acts_as_list', '~> 0.9.19'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'carrierwave', '~> 1.0'
gem 'faker', '~> 1.9', '>= 1.9.3', require: false
gem 'fast_jsonapi', '~> 1.1', '>= 1.1.1'
gem 'jwt_sessions', '~> 2'
gem 'mini_magick', '~> 4.9', '>= 4.9.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'pundit', '~> 2.0.1'
gem 'rack-cors', '~> 0.4.0'
gem 'rails', '~> 5.2.2'
gem 'redis', '~> 4.1.0'

group :development, :test do
  gem 'pry-byebug', '~> 3.7'
  gem 'rspec-rails', '~> 3.8'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'dox', '~> 1.1', require: false
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'json_matchers', '~> 0.4.0'
  gem 'pundit-matchers', '~> 1.6.0'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
  gem 'simplecov', '~> 0.16.1'
end

group :development do
  gem 'awesome_rails_console', '~> 0.4.3'
  gem 'brakeman', '~> 4.4'
  gem 'fasterer', '~> 0.4.2', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'lol_dba', '~> 2.1', '>= 2.1.5'
  gem 'rails_best_practices', '~> 1.19', '>= 1.19.4'
  gem 'reek', '~> 5.3', '>= 5.3.1'
  gem 'rubocop', '~> 0.65.0', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
