# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'pry'

Movie.destroy_all

def get_movies
    response = RestClient.get("https://ghibliapi.herokuapp.com/films/")
    movies = JSON.parse(response)

    movies.each do |movie|
        Movie.create(
            title: movie["title"],
            rating: movie["rt_score"].to_i,
            summary: movie["description"],
            director: movie["director"],
            release_date: movie["release_date"].to_i,
            image: ""
        )
    end
end

get_movies

titles = ["Castle in the Sky",
    "Grave of the Fireflies",
    "My Neighbor Totoro",
    "Kiki's Delivery Service",
    "Only Yesterday",
    "Porco Rosso",
    "Pom Poko",
    "Whisper of the Heart",
    "Princess Mononoke",
    "My Neighbors the Yamadas",
    "Spirited Away",
    "The Cat Returns",
    "Howl's Moving Castle",
    "Tales from Earthsea",
    "Ponyo",
    "Arrietty",
    "From Up on Poppy Hill",
    "The Wind Rises",
    "The Tale of the Princess Kaguya",
    "When Marnie Was There"]

def add_images(titles)
    i = 0
    while i <= 1 do
        found_movie = Movie.all.find_by(title: titles[i])
        case i
        when 0
            found_movie.update(image: "https://resizing.flixster.com/j2TIEO5EJ2_OeQdAPyQxO9tVGUU=/206x305/v1.bTsxMTI5MjU3MDtqOzE4NDQ1OzEyMDA7MTQ5NzsxOTk2")
        when 1
            found_movie.update(image: "https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg")
        end
        i+=1
    end
end

add_images(titles)