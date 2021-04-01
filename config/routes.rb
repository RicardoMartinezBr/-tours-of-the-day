Rails.application.routes.draw do
  devise_for :users
  get 'profile' => 'user#profile'
  get 'settings' => 'users#edit'
  resources :users do
    member do
      get :confirm_email
    end
  end

  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tours do
    resources :reservations, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
    resources :favorites, only: [:new, :create]
  end

  resources :reservations, only: [:index, :show, :destroy, :update]
  resources :favorites, only: [:destroy]
end
