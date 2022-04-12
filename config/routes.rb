Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :teams, :only => [:new, :create, :index, :show, :edit, :destroy]
  resources :players, :only => [:new, :create, :index, :show, :edit, :destroy]

end