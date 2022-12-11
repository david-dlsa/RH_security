Rails.application.routes.draw do
  devise_for :users
  root to: 'welcomes#index'

  resources :job_roles
  resources :workspaces
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
