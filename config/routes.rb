Rails.application.routes.draw do

  devise_for :users

  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resource :book_comments, only: [:create, :destroy]
  end

  resources :users,only: [:show,:index,:edit,:update]
  resources :relationships, only: [:create, :destroy]


  root 'home#top'
  get "home/about" => "home#about"

end