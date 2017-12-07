Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :redeems
  resources :credits
  resources :offers
  resources :earns
  devise_for :users
  root "offers#index"
  devise_scope :user do
    authenticated :user  do
      root to: 'offers#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
