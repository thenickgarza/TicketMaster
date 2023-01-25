Rails.application.routes.draw do
  get 'tickets/create'
  get 'tickets/index'
  get 'tickets/destroy'
  get 'tickets/edit'
  get 'tickets/new'
  get 'tickets/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root to: "homepage#index"
end
