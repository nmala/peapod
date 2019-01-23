Rails.application.routes.draw do

  resources :genres

  resources :podcasts
  resources :episodes
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
