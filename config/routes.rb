Rails.application.routes.draw do
  get 'category/index'
  get 'category/show'
  get 'category/new'
  get 'category/create'
  get 'category/destroy'
  get 'expenditure/index'
  get 'expenditure/show'
  get 'expenditure/new'
  get 'expenditure/create'
  get 'expenditure/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
