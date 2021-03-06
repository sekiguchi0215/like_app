Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  resources :users, only: [:index, :show] do
    member do
      get :following, :followers
    end
  end
end
