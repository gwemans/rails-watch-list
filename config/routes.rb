Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/create'
  # get 'lists/edit'
  root 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
