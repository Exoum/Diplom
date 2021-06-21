Rails.application.routes.draw do
  devise_for :users
  get 'users/profile'
  root 'pages#index'
  get 'parents/index', as: 'user_root'
  resources :pages
  resources :courses
  resources :admin
  resources :parents
  resources :teacher
end
