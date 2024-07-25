Rails.application.routes.draw do
  get 'home/index'
  resources :entities
  resources :attendances
  resources :student_histories
  resources :courses
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
