class WatchedMoviesController < ApplicationController 
    def index 
        @watched_movies = WatchedMovie.all 
        render json: @watched_movies
    end 

    def create 
        @watched_movie = WatchedMovie.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id]
        ) 
        render json: @watched_movie
    end 

    def destroy
        @watched_movie = WatchedMovie.find(
            params[:id]
        ) 
        @watched_movie.destroy 
        render json: {:message => "Has been deleted!"}
    end

end
