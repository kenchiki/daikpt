source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'haml-rails'
gem 'pg'
gem 'simple_form'
gem 'cocoon'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'binding_of_caller'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'letter_opener'
  gem 'rails-erd' # ER図生成
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'chromedriver-helper'
  gem 'spring-commands-rspec'
  gem 'dekiru'
  gem 'simplecov' # テストガバレッジ計測
  gem 'email_spec'
end
