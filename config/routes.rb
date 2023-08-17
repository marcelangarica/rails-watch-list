Rails.application.routes.draw do
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: 'list#index'
  # Defines the root path route ("/")
  root to: "lists#index"

  # get 'lists', to: 'lists#index'
  # # get 'lists/new', to: 'lists#new', as: :new_list
  # # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: :list
  resources :lists
  resources :bookmarks
end
