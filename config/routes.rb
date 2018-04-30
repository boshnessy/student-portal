Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post '/users' => 'users#create'

end
