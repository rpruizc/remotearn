Rails.application.routes.draw do
  passwordless_for :users, at: '/', as: :auth

  get 'home/index'
  resources :posts
  root to: "home#index"

end
