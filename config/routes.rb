Rails.application.routes.draw do
  resources :unwatched_movies, only: [:index, :create, :destroy]
  resources :watched_movies, only: [:index, :create, :destroy]
  resources :users, only: [:show, :create]
  resources :movies, only: [:index, :show]
  get '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
