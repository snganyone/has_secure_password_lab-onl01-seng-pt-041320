Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'users#new'
  post '/login' => 'users#create'
end
