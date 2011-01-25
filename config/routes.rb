Triptracker::Application.routes.draw do
  devise_for :users
  root :to => "users#new"
  resources :users do
    resources :trips do
      resources :locations
    end
  end
end
