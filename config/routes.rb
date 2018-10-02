Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects
  get '/users/:id/situation', to: 'users#situation'
  resources  :posts do
  	resources  :reviews
  end
  resources :appeals
  resources :lessons
  get '/lessons/pattern/new_pattern', to:'lessons#new_pattern'
  post '/lessons/pattern', to: 'lessons#create_pattern'
  
  root 'welcome#index'
  
end
