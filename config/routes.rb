Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
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

