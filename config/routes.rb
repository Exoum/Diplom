Rails.application.routes.draw do
  get 'parents/parent'
  root 'pages#index'
  resources :pages
end
