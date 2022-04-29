Rails.application.routes.draw do
  get 'projects/dashboard'
  get 'projects/form'
  get 'projects/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'projects#dashboard'
end
