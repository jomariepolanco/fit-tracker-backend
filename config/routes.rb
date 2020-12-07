Rails.application.routes.draw do
  resources :meals
  resources :meal_days
  resources :workouts
  resources :workout_days
  resources :days
  resources :goals
  resources :trackings
  resources :weeks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
