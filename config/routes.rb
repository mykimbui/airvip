Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:index, :show, :edit, :update] do
    resources :reviews, only: [:new, :create, :destroy]
    resources :bookings, only: [:new, :create, :destroy]
  end

  resource :dashboard, only: [:show], controller: "dashboard" do
    resources :bookings, only: []  do
      member do
        get 'accept'
        get 'decline'
        get 'cancel'
      end
    end

  end
end
