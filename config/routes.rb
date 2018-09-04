Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users 
  resources  :users
  resources  :subjects
  resources  :posts do
  	resources  :reviews
  end
  root 'welcome#index'
  
end
