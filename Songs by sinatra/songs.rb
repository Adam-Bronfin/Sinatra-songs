require 'sinatra'
require 'slim'
require 'sass' 

set :public_folder, 'assets'
get('/styles.css') { scss :styles.to_sym }

get '/' do
  slim :home 
end

get '/about' do 
  @name = "adam"
  @title = "This is your about page! This website is all about Frank Sinatra and his ultra smoothness!"
  slim :about
end

get '/contact' do
  slim :contact
end

not_found do
  slim :not_found
end
