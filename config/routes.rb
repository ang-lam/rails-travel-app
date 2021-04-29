Rails.application.routes.draw do
  root to: 'application#home'
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  post '/signup', to: 'users#create'
  resources :users
  resources :activities

  resources :destinations do
    resources :itineraries, only: [:index, :new, :create, :show]
  end

  resources :itineraries do
    resources :activities, only: [:new, :create]
  end
  
end
