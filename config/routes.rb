Rails.application.routes.draw do
  get 'pages/home'
  # get 'lists', to: "lists#index", as: :lists
  # get 'lists/new', to: "lists#new", as: :list_new
  # get 'list/:id', to: "lists#show", as: :list
  # post 'lists', to: "lists#create",

  # get 'lists/bookmarks/new', to: "bookmarks#new", as: :bookmark_new
  # post 'bookmarks' to: "bookmarks#create",
  # delete "bookmarks/:id", to: "bookmarks#destroy"
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [ :destroy ]

end
