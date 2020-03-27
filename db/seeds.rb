# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'pry'

WatchedMovie.destroy_all
UnwatchedMovie.destroy_all
Movie.destroy_all
User.destroy_all

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
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/PgNEZ-Ps61w" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 1
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1100-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/wdMaF6yu7Yo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 2
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_my_neighbor_totoro-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/srW-wajSxog" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 3
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_kiki-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/uM1fzCdPHSU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 4
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1479-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/E9wCudkAPXI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 5
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_porco_rosso-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/5PuTm8Pz5CQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 6
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1482-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/OByMAt1FzAk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 7
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1483-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/R6X_rhZqnE0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 8
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/06/poster_mononoke-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/K53oROH2sx0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 9
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1484-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/oJD0k7hWc6M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 10
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1055-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/k6HzOTKfkxQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 11
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_cat_returns-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/iIGcomM8lUQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 12
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/2783-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/oCIeWol8jVk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 13
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/5845-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/Q6CEyfSg71A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 14
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/14815-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/Zc4obWGVgGs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 15
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/arrietty_poster-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-BVG41qJaQY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 16
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/16933-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZXjn0h1F73Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 17
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/poster_wind_rises-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/YrueAaw0RYg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 18
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/18651-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NkRTHAgj2k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        when 19
            found_movie.update(image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/22719-title-treatment-portrait-key-art-normal-medium-683x1024.jpg")
            found_movie.update(trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/nGRBgBE-ptE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
        end

        i+=1
    end
end

add_images(titles)

Movie.create(
    title: "Ocean Waves",
    rating: 88,
    summary: "At Kichijōji Station, Tokyo, Taku Morisaki glimpses a familiar woman on the platform opposite boarding a train. Later, her photo falls from a shelf as he exits his apartment before flying to Kōchi Prefecture. Picking it up, he looks at it briefly before leaving. As the aeroplane takes off he narrates the events that brought her into his life...",
    director: "Tomomi Mochizuki",
    release_date: 1993,
    image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/15673-title-treatment-portrait-key-art-normal-medium-683x1024.jpg",
    trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/izyJ_NVyVaQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
)

Movie.create(
    title: "Nausicaä of the Valley of the Wind",
    rating: 88,
    summary: "Nausicaä, a gentle young princess, has an empathetic bond with the giant mutated insects that evolved in the wake of the destruction of the ecosystem. Traveling by cumbersome flying ship, on the backs of giant birds, and perched atop her beloved glider, Nausicaä and her allies must negotiate peace between kingdoms battling over the last of the world's precious natural resources.",
    director: "Hayao Miyazaki",
    release_date: 1984,
    image: "https://www.studioghibli.com.au/wp-content/uploads/2017/07/1475-title-treatment-portrait-key-art-normal-medium-683x1024.jpg",
    trailer: '<iframe width="560" height="315" src="https://www.youtube.com/embed/9bcsVzfiuf8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
)