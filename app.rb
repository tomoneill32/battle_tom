require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "This is my secret: I like cheese"
end

get '/pudding' do
  "test"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index) 
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index) 
end