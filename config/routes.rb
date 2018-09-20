Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects
  get '/users/:id/situation', to: 'users#situation'
  resources  :posts do
  	resources  :reviews
  end
  
  root 'welcome#index'
  
end
