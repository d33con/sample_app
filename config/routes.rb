Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',      to: 'static_pages#help'
  get  '/about',     to: 'static_pages#about'
  get  '/contact',   to: 'static_pages#contact'
  get  '/signup',    to: 'users#new'
  post '/signup',    to: 'users#create'
  get  '/login',     to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :users 
  # creates 7 routes in app
  # Verb       Path            Controller#action
  # GET        /users          users#index
  # GET        /users/new      users#new
  # POST       /users          users#create
  # GET        /users/:id      users#show
  # GET        /users/:id/edit users#edit
  # PATCH/PUT  /users/:id      users#update
  # DELETE     /users/:id      users#destroy
end
