Rails.application.routes.draw do
  resources :birthdays
  
  root 'birthdays#index'
end
