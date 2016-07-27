source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'bootstrap-sass', '3.2.0.2'
gem 'sass-rails', '~> 5.0.3'
gem 'uglifier', '>= 2.5.3'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails', '4.0.3'
gem 'turbolinks', '2.3.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem "font-awesome-rails"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'byebug'
  gem 'web-console'
  gem 'faker', '~> 1.6', '>= 1.6.5'
  gem 'spring'
end

group :test do
    gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace', '0.1.3'
  gem 'guard-minitest', '2.3.1'end

group :production do
  #use postgress in production and for compability with heroku
  gem 'pg'
  #compability requirement with heroku
  gem 'rails_12factor'
end
