Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/lists", to: "lists#index"
  # get "lists/:id", to: "lists#show", as: :list
  # post "lists/new", to: "lists#new", as: :new_list
  # get "lists", to: "lists#create"

  resources :lists do
    resources :bookmarks, only: [:new]
  end

  #get "lists", to: "lists#new"
  # Defines the root path route ("/")
  # root "articles#index"
end
