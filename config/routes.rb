Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'



  resources :pets, only: [:index, :show] do
    resources :reservations, only: [:create]
  end

  resources :reservations, only: [:index]

  namespace :owner do
    resources :pets, only: [:index, :new, :create]
    resources :reservations, only: [:index] do
      member do
        patch 'accept'
        patch 'decline'
      end
    end
  end
end
