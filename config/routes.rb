Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
