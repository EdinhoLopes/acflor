Rails.application.routes.draw do
  resources :attendances
  # resources :students
  resources :students do
    collection do
      get 'get_courses/:entity_id', to: 'students#get_courses'
    end
  end
  resources :courses
  resources :entities
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
