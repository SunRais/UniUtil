Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects
  resources  :discussions do
	resources :comments
  end
  
  root 'welcome#index'
end
