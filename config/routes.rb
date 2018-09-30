Rails.application.routes.draw do
  
  #comment
  resources :comments, only: [:create, :destroy]
  
  #participate
  resources :participates, only: [:new, :edit, :update, :create, :destroy]
  
  # jukebox
  get 'jukebox', to: 'jukebox#index'
  
  # song
  resources :songs
  post '/songs/:id/follow', to: 'follows#song_follow_toggle', as: 'song_follow'
  
  # artist
  resources :artists
  post '/artists/:id/follow', to: 'follows#artist_follow_toggle', as: 'artist_follow'
  
  # user
  devise_for :users
  
  #like
  post '/articles/:id/like', to: 'likes#like_toggle', as: 'like_article'
  
  # article
  root 'articles#index'
  resources :articles
  
  # profile
  get   '/my_profile',      to: 'profiles#show'
  get   '/new_profile',     to: 'profiles#new'
  get   'create_profile',   to: 'profiles#new'
  post  'create_profile',   to: 'profiles#create'
  get   '/edit_profile',    to: 'profiles#edit'
  get   '/update_profile',  to: 'profiles#edit'
  patch '/update_profile',  to: 'profiles#update'
  # For details on the DSL available within this file,see http://guides.rubyonrails.org/routing.html
end
