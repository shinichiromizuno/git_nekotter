Rails.application.routes.draw do
  root 'tweets#index'
  # get 'tweets/new' => 'tweets#new'
  # post 'tweets' => 'tweets#create'
  resources :tweets, only: [:new, :create, :edit, :update]
  # get 'tweets' => 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
