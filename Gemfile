source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bcrypt',               '3.1.13'
gem 'bootsnap',             '1.7.2', require: false
gem 'bootstrap-sass',       '3.4.1'

gem 'guard-minitest'
gem 'jbuilder',             '2.10.0'
gem 'puma',                 '5.2.2'
gem 'rails',                '6.1.4'
gem 'rexml'
gem 'sass-rails',           '6.0.0'
gem 'turbolinks',           '5.2.1'
gem 'webpacker',            '5.2.1'

group :development, :test do
  gem 'byebug',             '11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3',            '1.4.2'
end

group :development do
  gem 'listen',             '3.4.1'
  gem 'rack-mini-profiler', '2.3.1'
  gem 'spring',             '2.1.1'
  gem 'web-console',        '4.1.0'
end

group :test do
  gem 'capybara',           '3.35.3'
  gem 'minitest', group: :test
  gem 'minitest-reporters', group: :test
  gem 'rails-controller-testing'
  gem 'selenium-webdriver', '3.142.7'
  gem 'webdrivers',         '4.6.0'
end

group :production do
  gem 'pg',                 '1.2.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# Uncomment the following line if you're running Rails
# on a native Windows system:
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
