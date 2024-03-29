Rails.application.routes.draw do
  get "about-us", to:"about#index", as: :about
  root to:"main#index"
  get "sign_up", to:"registrations#new"
  post "sign_up", to:"registrations#create"
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  get "sign_in", to:"session#new"
  post "sign_in", to:"session#create"
  
  delete "logout", to: "session#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
