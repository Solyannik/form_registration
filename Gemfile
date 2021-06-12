source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'devise', '~> 4.8'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'jquery-rails'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'
gem 'dadata'
gem 'jquery-dadata-rails', github: 'gordienko/jquery-dadata-rails'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'activeadmin'
gem 'cancancan'
gem 'draper'
gem 'pundit'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 2.7.2'
gem 'httparty'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
end