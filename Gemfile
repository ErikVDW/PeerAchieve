source 'http://rubygems.org'
ruby '2.1.5'
gem 'rails',                '4.2.0'
gem 'sass-rails',           '4.0.5'
gem 'uglifier',             '2.5.3'
gem 'coffee-rails',         '4.1.0'
gem 'jquery-rails',         '4.0.3'
gem 'turbolinks',           '2.3.0'
gem 'jbuilder',             '2.2.3'
gem 'sdoc',                 '0.4.0', group: :doc

gem 'font-awesome-rails',   '4.3.0.0'

gem 'devise',               '3.4.1'
gem 'cancancan',            '1.10'
gem 'rails_admin',          '0.6.6'

gem 'rollbar',              '1.3.1'

gem 'mini_magick',          '4.1.0'
gem 'carrierwave',          '0.10.0'

gem 'simple_form',          '3.1.0'
gem 'will_paginate',        '3.0.6'

gem 'exception_handler',    '0.3.45'

gem 'paper_trail'

gem 'stripe',               '1.20.1'

group :development, :test do
  gem 'sqlite3',     '1.3.9'
  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
  gem 'spring',      '1.1.3'
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
  gem 'brakeman',           '3.0.2'
end

group :production do #Heroku
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
end




