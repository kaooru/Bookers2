Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:new, :index, :show, :edit, :update,]

  root "layouts#top"
  get "users" => "users#index"
  get "home/about" => "layouts#about"
  delete "/books" => "books#destroy"
end
