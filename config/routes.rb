Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get '/users' => 'users#index'
  post '/users' => 'users#create'


end
