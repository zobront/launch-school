require 'sinatra'
require './lib/wtfdirn.rb'

set :port, 8080
set :views, "views"

get '/' do
  erb :index, :locals {'randombook_name' => params[:randombook_name]}
end
