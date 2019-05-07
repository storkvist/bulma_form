source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Declare your gem's dependencies in bulma_form.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.
gem 'rails', '~> 6.0.0.rc1'

group :development do
  gem 'htmlbeautifier'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'sass-rails'
  gem 'web-console'
end

group :test do
  gem 'equivalent-xml'
  gem 'sqlite3'
end

group :development, :test do
  gem 'byebug'
end
