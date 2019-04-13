Rails.application.routes.draw do
  resources :posts
  resources :users
  
  get '/users', to: 'users#index'

  root to: 'users#index'

  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'

  delete '/users', to: 'users#destroy'
  delete '/posts', to: 'posts#destroy'

  patch '/users', to: 'users#update'
  patch '/posts', to: 'posts#update'



end

