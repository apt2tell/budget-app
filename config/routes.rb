Rails.application.routes.draw do
  get 'splash/index'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/destroy'
  get 'expenditures/index'
  get 'expenditures/show'
  get 'expenditures/new'
  get 'expenditures/create'
  get 'expenditures/destroy'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
