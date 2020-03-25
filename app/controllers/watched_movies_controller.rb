class WatchedMoviesController < ApplicationController 
    def index 
        @watched_movies = WatchedMovie.all 
        render json: @watched_movies, include: [{:user => {only: :user_name}, 
            :movie => {only: :title}}]
    end 

    def create 
        @watched_movie = WatchedMovie.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id]
        ) 
    end 

    def destroy
        @watched_movie = WatchedMovie.find(
            params[:id]
        ) 
        @watched_movie.destroy 
        render json: {:message => "Has been deleted!"}
    end

end
