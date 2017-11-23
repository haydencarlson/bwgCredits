Rails.application.routes.draw do
  resources :credits
  resources :offers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :earns
  devise_for :users
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
