Rails.application.routes.draw do
  devise_for :users
root to: "docs#index"
resources :docs do
  resources :comments, only: :create
end
end
