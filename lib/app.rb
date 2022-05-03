require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "This is my secret: I like cheese"
end

get '/pudding' do
  'for i in 1..5 do 
    "#{i}"
  end'
end