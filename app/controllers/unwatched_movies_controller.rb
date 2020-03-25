class UnwatchedMoviesController < ApplicationController 
    def index 
        @unwatched_movies = UnwatchedMovie.all 
        render json: @unwatched_movies, include: [:user, :movie]
    end 

    def create 
        @unwatched_movie = UnwatchedMovie.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id]
        )
        redirect_to "http://localhost:3001/profile.html?user_id=#{params[:user_id]}"
    end  

    def destroy 
        @unwatched_movie = UnwatchedMovie.find(
            params[:id]
        ) 
        @unwatched_movie.destroy 
        render json: {:message => "Has been deleted!"}
    end
end
