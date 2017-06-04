# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Rack::ReverseProxy do
  reverse_proxy /^\/blog(\/.*)$/, 'http://shetabyad.com/blog$1', :username => 'mohsen662', :password => 'u603051726', :timeout => 500, :preserve_host => true
end

run Rails.application
