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
    get '/contact', to: 'pages#contact'
    get '/inks_and_consumables', to: 'pages#inks_and_consumables'
    get '/distributor', to: 'pages#distributor'
    get '/cost_of_ownership', to: 'pages#cost_of_ownership'
    get '/fxone_remote', to: 'pages#fxone_remote'
    get '/fxone_standard', to: 'pages#fxone_standard'
    get '/fxone_plus', to: 'pages#fxone_plus'
    get '/send_email', to: 'pages#send_email'
    get '/faq', to: 'pages#faq'
  # end
end
