class User < ApplicationRecord 
    has_many :watched_movies 
    has_many :unwatched_movies
    has_many :movies, through: :watched_movies 
    has_many :movies, through: :unwatched_movies
end
