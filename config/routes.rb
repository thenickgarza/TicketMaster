Rails.application.routes.draw do

  get "signup" => "users#new"
  get "login" => "sessions#new"
  delete "logout" => "sessions#destroy"

  resources :users 
   resources :tickets
  
  resources :sessions, except:[:index, :edit, :update, :show, :new, :destroy]

  # Defines the root path route ("/")
   root to: "users#index" 

end
