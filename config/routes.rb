Rails.application.routes.draw do
  devise_for :users
  resources  :subjects
  resources  :posts
  root 'posts#index'
end
