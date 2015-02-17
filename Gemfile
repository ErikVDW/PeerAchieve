source 'https://rubygems.org'

gem 'rails',                '4.2.0'
gem 'sass-rails',           '5.0.1'
gem 'uglifier',             '2.5.3'
gem 'coffee-rails',         '4.1.0'
gem 'jquery-rails',         '4.0.3'
gem 'turbolinks',           '2.3.0'
gem 'jbuilder',             '2.2.3'
gem 'sdoc',                 '0.4.0', group: :doc


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Use Devise for security
gem 'devise'

# Use CanCan for Authorization
gem 'cancancan', '~> 1.10'

# Use rails admin for extended admin roles
gem 'rails_admin'

# Use rollbar for error reporting
gem 'rollbar', '~> 1.3.1'

#Use Will_Paginate for blog index pagination
gem 'will_paginate', '~> 3.0.6	'

#Use minimagick for Image Conversions
#gem 'minimagick'

#Use carrierwave for optional integration module of image uploads with ActiveRecord
#gem 'carrierwave'

#Use Cloudinary for image upload, editing, displaying
#gem 'cloudinary'

group :development, :test do
  gem 'sqlite3',     '1.3.9'
  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
  gem 'spring',      '1.1.3'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
end
