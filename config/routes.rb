Rails.application.routes.draw do
  devise_for :users
  get 'profile' => 'user#profile'
  get 'settings' => 'users#edit'
  resources :users do
    member do
      get :confirm_email
    end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
