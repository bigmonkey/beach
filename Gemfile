source 'https://rubygems.org'
ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg', '0.17.0'

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'
gem 'coffee-rails', '4.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'


# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.5.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
	gem 'rails_12factor','0.0.2'
end	
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server in production heroku and ubuntu
gem 'unicorn','4.8.2'
#gem 'thin','1.6.0'
gem "execjs", '2.0.2'
gem 'therubyracer', :platform => 'ruby'

# Add CMS
gem 'comfortable_mexican_sofa', '1.9.0'

# Used by CMS via paperclip to store onto AWS S3
gem "aws-sdk", "1.11.1"

# Used for authentication
gem "devise", '3.2.1'

# Used to add trailing slash in config/application.rb
gem "rack-rewrite", '1.4.01'

# Manages private pw when using source control
gem "figaro", '0.7.0'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'rspec-rails', '2.13.1'
  gem "factory_girl_rails", '4.2.1'  
  #gem 'spork-rails', '4.0.0'
  #gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'   
  gem "pry", "0.9.12.2"  
  gem "pry-nav", "0.2.3"
end

group :test do
  gem 'selenium-webdriver', "~>2.38.0"
  gem 'capybara', '2.1.0'
  gem 'launchy', '2.4.2'
  gem 'faker', '1.1.2'
  gem 'guard-rspec', '2.5.0'

  gem "shoulda-matchers", '2.4.0'

  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'  
  gem 'email_spec', '1.5.0'
end