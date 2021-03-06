Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  get 'profile' => 'user#profile'
  get 'settings' => 'users#edit'


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
