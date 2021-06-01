Rails.application.routes.draw do
  get 'admin/admin_view'
  get 'parents/parent'
  root 'pages#index'
  resources :pages
end
