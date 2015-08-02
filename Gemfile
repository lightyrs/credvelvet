source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.3'
gem 'pg'
gem 'simple_form'
gem 'sidekiq'
gem 'sinatra', require: nil
gem 'whenever'
gem 'protected_attributes'
gem 'dotenv-rails'
gem 'colored'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'active_model_serializers', git: 'https://github.com/rails-api/active_model_serializers.git'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'haml-rails'

group :development, :test do
  gem 'leader', git: 'https://github.com/halo/leader.git', require: false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'puma'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-state'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'byebug'
  gem 'spring'
  gem 'awesome_print'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'airbrussh', '~> 0.6.0', require: false
  gem 'capistrano', '~> 3.4.0', require: false
  gem 'capistrano-rvm', '~> 0.1.2', require: false
  gem 'capistrano-rails', '~> 1.1.3', require: false
  gem 'capistrano-sidekiq', '~> 0.5.3', require: false
  gem 'capistrano-git-submodule-strategy', git: 'https://github.com/ekho/capistrano-git-submodule-strategy.git', require: false
  gem 'foreman'
  gem 'html2haml'
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_apps_testing'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :production do
  gem 'rails_12factor'
end
