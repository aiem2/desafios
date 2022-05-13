Rails.application.routes.draw do
  get 'libros/index'
  get 'libros/prestamo'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'libros#index'
end
