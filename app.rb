require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
DOWNLOAD_FILE_NAME = 'download.xlsx'
CONTENT_TYPE = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'


set :root, File.dirname(__FILE__)
set :port, 3000
set :bind, '0.0.0.0'

get '/' do
  "ruby version #{RUBY_VERSION}"
end

class Template < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :data, presence: true
end

# Upload Template file
post '/templates/create' do
  begin
    Template.create!(title: params['title'], data: params['data'])
  rescue ActiveRecord::RecordInvalid => e
    status 500
    {message: e.message}.to_json
  end
  status 200
  {message: 'OK'}.to_json
end

# list of Template files
get '/templates' do
  Template.pluck(:title).to_json
end

# create Excel file
post '/create' do

end
