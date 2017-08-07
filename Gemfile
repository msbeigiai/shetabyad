source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


gem 'bootstrap-sass'
gem 'devise'
gem 'carrierwave'
gem 'font-awesome-sass'
gem 'rails_admin'
gem 'redcarpet'
gem 'pygments.rb'
gem 'cloudinary'
gem 'mini_magick'
gem 'acts_as_votable', '~> 0.10.0'
gem 'gritter', '~> 1.2'
gem 'font-awesome-sass'
gem 'jquery-turbolinks'
gem 'commontator'
gem 'parsi-date'
gem 'friendly_id'
gem 'mail_form'
# gem 'rack-reverse-proxy', :require => 'rack/reverse_proxy'
gem 'google-analytics-rails', '1.1.0'
#gem "wysiwyg-rails"
#gem 'tinymce-rails'
gem 'masonry-rails'

group :development do 
  gem 'capistrano', '~> 3.8', '>= 3.8.1'
  gem 'capistrano-rails', '~> 1.2', '>= 1.2.3'
  gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.1'
  gem 'capistrano-passenger', '~> 0.2.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
