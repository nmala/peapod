Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create]
  resources :genres

  resources :podcasts
  resources :episodes
  resources :users, only: [:show]
  resources :subscriptions

  get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'


    root 'application#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
