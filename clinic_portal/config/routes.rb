Rails.application.routes.draw do
  resources :patients
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  get 'home/index'

  # ... other routes ...
end