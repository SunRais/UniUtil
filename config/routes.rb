Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users 
  resources  :users
  resources  :subjects
  resources  :discussions
  root 'welcome#index'
  
end
