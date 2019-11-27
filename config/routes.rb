Rails.application.routes.draw do
  namespace :admin do
    get 'jobs/new'
    get 'jobs/create'
    get 'jobs/edit'
    get 'jobs/update'
    get 'jobs/destroy'
  end
  get 'jobs/index'
  get 'jobs/show'
  root to: 'pages#home'
  devise_for :users
  namespace :admin do
    resources :countries, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
    resources :jobs, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :posts, only: [:index, :show]
  resources :jobs, only: [:index, :show]
end
