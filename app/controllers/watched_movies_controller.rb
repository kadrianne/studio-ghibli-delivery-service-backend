class WatchedMoviesController < ApplicationController 
    def index 
        @watched_movies = WatchedMovie.all 
        render json: @watched_movies, include: [:user, :movie]
    end 

    def create
        @watched_movie = WatchedMovie.find_by(
            user_id: params[:user_id],
            movie_id: params[:movie_id]
        ) 

        if !@watched_movie
            @watched_movie = WatchedMovie.create(
                user_id: params[:user_id],
                movie_id: params[:movie_id]
            )
        end

        redirect_to "http://localhost:3001/profile.html?user_id=#{params[:user_id]}"
    end 

    def destroy
        @watched_movie = WatchedMovie.find(
            params[:id]
        ) 
        @watched_movie.destroy 
        render json: {:message => "Has been deleted!"}
    end

end
