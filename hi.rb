=begin
require 'sinatra'

get "/" do
  "hello!!!"
end

get "/about" do
  "關於我們"
end
=end

require 'sinatra'

get "/" do
  "hello!!!"
end

get "/about" do
  erb :about
  "hello"
end
