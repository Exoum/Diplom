Rails.application.routes.draw do
  root 'pages#index'
  resources :pages
  resources :courses
  resources :admin
  resources :parents
end
