Rails.application.routes.draw do
  root "main#index"

  get "/register", to: "register#new"
  post "/register" , to: "register#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in" , to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  get "/giftcard", to: "giftcard#order"
  get "/neworder", to: "giftcard#neworder"
  post "/neworder", to: "giftcard#create"

  get "/admin", to: "adminpage#showalltable"
  get '/order/:id/edit', to: 'adminpage#edit'
  post '/order/:id/edit', to: 'adminpage#update'
end
