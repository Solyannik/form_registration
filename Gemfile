source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'devise', :git => "https://github.com/heartcombo/devise.git", ref: '8bb358cf80a632d3232c3f548ce7b95fd94b6eb2'
gem 'devise-i18n'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'jquery-rails'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'
gem 'jquery-dadata-rails', github: 'gordienko/jquery-dadata-rails'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'activeadmin'
gem 'cancancan'
gem 'draper'
gem 'pundit'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 2.7.2'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
end