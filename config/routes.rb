Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    }
  resources :cohorts
  resources :instructors
  resources :courses
  resources :students
  resources :cohort_students

  root to: "home#index"

  get '/home', to: 'dashboard#home'

end
