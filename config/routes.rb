Rails.application.routes.draw do
  resources :presences
  resources :teacher_courses
  resources :course_entities
  resources :student_courses
  resources :teachers
  resources :entities
  resources :courses
  resources :students
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
