Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  resources :users
  resources :friends, :controller => "users", :type => "Friend"
  resources :enemies, :controller => "users", :type => "Enemy"
  resources :neutralities, :controller => "users", :type => "Neutrality"
end
