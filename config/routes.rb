Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  get "home/about" => "homes#about", as: "about"
  patch 'books/:id' => 'books#update', as: 'update_book'
  put 'books/:id' => 'books#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
