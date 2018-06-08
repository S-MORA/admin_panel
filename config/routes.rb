Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :instructors
  resources :courses
  resources :students
  resources :cohort_students

  root to: 'dashboard#home'

   # post '/cakes/:id/toggle-status', to: 'cakes#toggle_status', as: :toggle_cake_status
   #
   # post '/muffins/:id/toggle-status', to: 'muffins#toggle_status', as: :toggle_muffin_status
end
