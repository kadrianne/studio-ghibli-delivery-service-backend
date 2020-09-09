class UsersController < ApplicationController 
    
    def index
        @users = User.all
        render json: @users
    end

    def show 
        @user = User.find(params[:id]) 
        render json: @user, include: {
            :watched_movies => {
                include: [{
                    :movie => {
                        only: [:title, :image]
                    }
                }]
            },
            :unwatched_movies => {
                include: [{
                    :movie => {
                        only: [:title, :image]
                    }
                }]
            }
        }
    end 

    def create
        @user = User.create(
            user_name: params[:user_name],
            password: params[:password]
        ) 
        redirect_to "http://localhost:3001/movies.html?user_id=#{@user.id}"
    end

    def login
        @user = User.find_by(
            user_name: params[:name],
            password: params[:password]
        ) 
        if @user
            redirect_to "http://localhost:3001/movies.html?user_id=#{@user.id}"
        else
            redirect_to "http://localhost:3001"
        end
    end

end
