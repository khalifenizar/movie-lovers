require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    erb :home
end

get '/game' do
    @title = params[:title]
    erb :game
end
