Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post "/search" => "home#search"
  get "/results" => "home#results"

  get '/users/new' => "user#new"
  post '/users' => "user#create"
  get '/users/:id' => "user#profile"
end
