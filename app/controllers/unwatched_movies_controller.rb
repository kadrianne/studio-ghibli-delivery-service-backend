class UnwatchedMoviesController < ApplicationController 
    def index 
        @unwatched_movies = UnwatchedMovie.all 
        render json: @unwatched_movies
    end 

    def create 
        @unwatched_movie = UnwatchedMovie.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id]
        ) 
        render json: @unwatched_movie
    end  

    def destroy 
        @unwatched_movie = UnwatchedMovie.find(
            params[:id]
        ) 
        @unwatched_movie.destroy 
        render json: {:message => "Has been deleted!"}
    end
end
