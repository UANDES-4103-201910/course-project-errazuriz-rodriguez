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
  get '/blacklist', to: 'blacklists#blacklist'
  get '/adminreg', to: 'adminregs#adminreg'
  get '/changepassword', to: 'changepasswords#changepassword'
  get '/dumpster', to: 'dumpsters#dumpster'
  get '/editprofile', to: 'editprofiles#editprofile'
  get '/home', to: 'homes#home'##########
  get '/passrec', to: 'passrecs#passrec'########
  get '/reg', to: 'regs#reg'
  get '/useradmin', to: 'useradmins#useradmin'
  get '/userhome', to: 'userhomes#userhome'
  get '/userprofile', to: 'userprofiles#userprofile'
  get '/adminsystem', to: 'adminsystems#adminsystem'
  get '/messages/conversation', to: 'messages#conversation'
  get '/messages', to: 'messages#chats'





  root to: 'homes#home'

  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'

  delete '/users', to: 'users#destroy'
  delete '/posts', to: 'posts#destroy'

  patch '/users', to: 'users#update'
  patch '/posts', to: 'posts#update'



end

