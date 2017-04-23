require "sinatra"
require "sinatra/reloader"
require 'tilt/erubis'
require 'yaml'

before do
  @users = YAML.load_file("users.yaml")
end

helpers do
  def count_interests(users)
    counter = 0

    users.each do |user, attributes|
      counter += attributes[:interests].count.to_i
    end
    counter
  end
end

get "/" do
  redirect "/users"
end

get "/users" do
  erb :home
end

get "/:name" do
  @name = params[:name].to_sym
  @email = @users[@name][:email]
  @interests = @users[@name][:interests]

  erb :user
end
