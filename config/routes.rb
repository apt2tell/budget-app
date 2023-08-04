Rails.application.routes.draw do
  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  root to: 'splashes#index'

  devise_for :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :expenditures
  resources :categories
end
