Rails.application.routes.draw do

  resources :businesses
  get '/', to: 'nav_pages#index', as: 'root_welcome'

  get '/welcome', to: 'nav_pages#index', as: 'welcome'

  get '/help', to: 'nav_pages#help'

  get '/about', to: 'nav_pages#about'

  get '/contact', to: 'nav_pages#contact'
  
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'nav_pages#home'
  
  get '/nav_pages', to: 'nav_pages#home'
  
  get '/signup', to: 'users#new'
  
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new'
  
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  # resources :users do
  #   member do
  #     get :following, :followers
  #   end
  # end
  
  resources :account_activations, only: [:edit]
  
  resources :password_resets, only: [:new, :create, :edit, :update]
  
  resources :microposts, only: [:create, :destroy]
  
  resources :relationships, only: [:create, :destroy]

  
end
