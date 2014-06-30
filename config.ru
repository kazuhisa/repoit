$LOAD_PATH << File.dirname(__FILE__)
require 'rubygems'
require 'bundler'

Bundler.require

require 'app'

set :run, false
set :environment, :production

run Sinatra::Application