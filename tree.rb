require 'sinatra'
require './random'

get '/' do 
  sass_file = File.open "./public/stylesheets/style.scss", "r"
  sass = Sass::Engine.new(sass_file.read, syntax: :scss)
  File.open "./public/stylesheets/style.css", "w" do |f|
    f.puts sass.render
  end
  erb :index
end