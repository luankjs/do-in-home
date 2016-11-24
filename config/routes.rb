Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  root 'home_controller#index'

  resources :users
  resources :tasks
end
