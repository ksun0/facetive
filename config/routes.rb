Rails.application.routes.draw do
  get 'authorizations/create'

  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'
  get  '/welcome',    to: 'static_pages#welcome'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get '/login', to: 'sessions#new'
  match '/auth/:provider/callback', :to => 'authorizations#create', via: :get
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :posts,          only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
