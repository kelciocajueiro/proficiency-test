Rails.application.routes.draw do
  resources :classrooms
  root 'welcome#index'
  get 'welcome/index'

  resources :students
  resources :classrooms
  resources :courses
end
