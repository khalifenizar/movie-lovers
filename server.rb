require 'sinatra'
require 'imdb'
require 'sinatra/reloader' if development?

get '/' do
    erb :home
end

get '/game' do
    @title = params[:title]

    search = Imdb::Search.new(@title)

    @results = search.movies.size
    @movies = search.movies[0,9]

    erb :game
end
