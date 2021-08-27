Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :chefs, only: [:index, :show, :new, :create] do
    
    resources  :bookings, only: [:show, :new, :create, :edit, :update]
  end 
  resources :bookings, only: [:index, :destroy]

end
