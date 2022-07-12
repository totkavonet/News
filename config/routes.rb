Rails.application.routes.draw do
  devise_for :users

  scope '/admin' do
    resources :users
  end

  root to: 'posts#index'

  resources :posts
  resources :roles
  resources :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
