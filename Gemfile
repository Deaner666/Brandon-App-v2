source 'http://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
gem 'formtastic', '~> 1.1.0'
gem 'css3buttons'
gem 'activeadmin'
gem "aws-s3", "~> 0.6.2"
gem "rmagick", "~> 2.15.2"
gem "paperclip", "~> 2.3"
gem "sass", "3.1.12"
gem "aasm", "3.0.2"
gem "cancan", "1.6.7"
gem "puma"

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :production do
  gem 'fastercsv'
  gem 'pg'
end

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'rspec-rails', '2.3.0'
  # gem 'annotate-models'
  # gem 'ruby-debug19'
  gem 'mailcatcher'
end

group :test do
  gem 'rspec', '2.3.0'
  gem 'webrat'
  gem 'factory_girl_rails'
end