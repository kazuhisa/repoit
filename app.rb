require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?

DOWNLOAD_FILE_NAME = 'download.xlsx'
CONTENT_TYPE = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'

set :root, File.dirname(__FILE__)
set :port, 3000
set :bind, '0.0.0.0'

get '/' do
  "ruby version #{RUBY_VERSION}"
end

# Upload Template file
post '/templates/create' do

end

# list of Template files
get '/templates' do

end

# create Excel file
post '/create' do

end
