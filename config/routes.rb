Rails.application.routes.draw do
  # get 'tasks/index'
  # get '/tasks', to: 'tasks#index'
  resources :tasks
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
