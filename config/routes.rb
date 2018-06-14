Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :instructors
  resources :courses
  resources :students
  resources :cohort_students

  root to: "home#index"

  get '/home', to: 'dashboard#home'

end
