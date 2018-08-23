Rails.application.routes.draw do
  # song
  resources :songs
  
  # artist
  resources :artists
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
