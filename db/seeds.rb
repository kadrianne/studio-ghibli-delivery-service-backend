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
    while i <= 19 do
        found_movie = Movie.all.find_by(title: titles[i])

        case i
        when 0
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1476-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 1
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1100-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 2
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_my_neighbor_totoro-683x1024.jpg")
        when 3
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_kiki-683x1024.jpg")
        when 4
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1479-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 5
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_porco_rosso-683x1024.jpg")
        when 6
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1482-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 7
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1483-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 8
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/06/poster_mononoke-683x1024.jpg")
        when 9
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1484-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 10
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1055-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 11
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_cat_returns-683x1024.jpg")
        when 12
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/2783-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 13
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/5845-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 14
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/14815-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 15
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/arrietty_poster-683x1024.jpg")
        when 16
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/16933-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        when 17
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_wind_rises-683x1024.jpg")
        when 18
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/Isao-Takahata-and-His-Tale-of-the-Princess-Kaguya-683x1024.jpg")
        when 19
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/22719-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
        end

        i+=1
    end
end

add_images(titles)