require_relative '../lib/movie_filter'

RSpec.describe 'MovieFilter' do
    it 'returns the correct amount of movies' do
        movies = []
        movie_filter = MovieFilter.new(movies)
        filtered = movie_filter.filter(10)
        expect(filtered.size).to eq(10)
    end

    it 'removes movies without posters' do
        movies = []
        movie_filter = MovieFilter.new(movies)
        filtered = movie_filter.filter(10)
        filtered.each do |movie|
            expect(movie.poster).not_to be_nil
        end
    end
end
