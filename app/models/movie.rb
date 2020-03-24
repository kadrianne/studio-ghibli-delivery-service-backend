class Movie < ApplicationRecord 
    has_many :watched_movies 
    has_many :unwatched_movies 
end
