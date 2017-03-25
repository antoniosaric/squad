Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  post "/search" => "home#search"
  get "/results" => "home#results"

  get '/user/:id' => "user#profile"
  get '/user/new' => "user#new"
  post '/user' => "user#create"
end
