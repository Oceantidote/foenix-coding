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
    get '/inks_and_consumables', to: 'pages#inks_and_consumables'
    get '/distributor', to: 'pages#distributor'
    get '/send_email', to: 'pages#send_email'
  # end
end
