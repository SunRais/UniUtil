Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects do
    resources :announcements
  end
  resources :groups
  resources  :discussions do
    resources :comments
  end
  resources :appeals
  resources :lessons
  resources :notifications
  get '/subjects/:id/follow', to: 'subjects#follow'
  get '/subjects/:id/unfollow', to: 'subjects#unfollow'
  get '/subjects/follow/index', to: 'subjects#index_followed'
  root 'welcome#index'
end
