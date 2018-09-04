Rails.application.routes.draw do
  devise_for :users
  resources  :users
  resources  :subjects
  resources  :discussions
  root 'users#index'
end
