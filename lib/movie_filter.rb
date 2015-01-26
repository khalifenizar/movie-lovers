class MovieFilter
    def initialize(movies)
        @movies = movies
    end

    def filter(amount)
        filtered = []
        checked = 0

        until filtered.size == amount || checked == @movies.size
            movie = @movies[checked]
            filtered.push(movie) unless movie.poster.nil?
            checked += 1
        end

        return filtered
    end
end
