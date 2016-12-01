Rails.application.routes.draw do

  devise_for :users, controller: { registrations: 'registrations'}
  root to: 'pages#home'

  resources :profiles, only: [:index, :show, :edit, :update] do

    resources :bookings, only: [:new, :create, :destroy] do
        resources :reviews, only: [:new, :create, :destroy]
    end
    post '/new_speciality', to: 'profiles#new_speciality'
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
