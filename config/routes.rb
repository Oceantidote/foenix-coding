Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :admin do
    resources :countries, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
