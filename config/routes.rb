Rails.application.routes.draw do

  get '/', to: 'nav_pages#index', as: 'root_welcome'
  get '/welcome', to: 'nav_pages#index', as: 'welcome'
  
end
