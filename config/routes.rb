Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :instructors
  resources :courses
  resources :students 
  #   member do
  #     get '/add_cohort'
  #   end
  # end
  resources :cohort_students

end
