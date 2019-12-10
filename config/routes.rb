Rails.application.routes.draw do
  # scope "/:locale" do
    root to: 'pages#home'
    get '/faq', to: 'pages#faq'
    devise_for :users
    namespace :admin do
      resources :countries, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :posts, only: [:new, :create, :edit, :update, :destroy]
      resources :jobs, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :posts, only: [:index, :show]
    resources :jobs, only: [:index, :show]
    get '/about', to: 'pages#about'
  # end
end
