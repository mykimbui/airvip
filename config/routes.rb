#   devise_for :users
#   root to: 'pages#home'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :users, only: [:show, :create, :new, :update, :edit, :destroy] do
#     resources :reviews, only: [:new, :create, :show, :edit, :update, :destroy]
#     resources :bookings, only: [:index, :show, :destroy, :new, :create]
#     resources :photos, only: [:new, :create, :destroy]
#   end
# end
Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:index, :show, :edit, :update] do
    resources :reviews, only: [:new, :create, :destroy]
    resources :bookings, only: [:new, :create, :destroy]
  end

  resource :dashboard, only: [:show] do
    resources :bookings, only: []  do
      member do
        get 'accept'
        get 'decline'
        get 'cancel'
      end
    end
  end

  # resource :profile, only: [:show, :edit, :update] do
  #   resources :bookings, only: [:index, :show, :edit, :update]
  #   resources :photos, only: [:new, :create, :destroy]
  # end
end


# Rails.application.routes.draw do

#   devise_for :users

#   resources :users, only:

#   root 'pages#home'
# end
