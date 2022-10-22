Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'subjects#index'

  resources :subjects, only: %i[index show]
  resources :votes, only: :create
end
