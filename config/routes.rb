Rails.application.routes.draw do
  get 'ranking', to: 'score#index'
  put '/tasks/:id/conclude', to: 'tasks#conclude', as: :conclude_task

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  root 'home_controller#index'

  resources :users
  resources :tasks
end
