Rails.application.routes.draw do
  devise_for :users
  get 'reservations/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "movies#index"
  resources :movies do
    resources :reservations, only: [:new, :create]
  end
end
