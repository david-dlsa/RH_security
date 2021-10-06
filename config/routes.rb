Rails.application.routes.draw do
  root to: 'welcomes#index'

  resources :job_roles
  resources :workspaces
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
