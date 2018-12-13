Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects
  resources :groups
  resources  :discussions do
    resources :comments
  end
  resources :appeals
  resources :lessons
  get '/lessons/pattern/new_pattern', to:'lessons#new_pattern'
  post '/lessons/pattern', to: 'lessons#create_pattern'
  get '/subjects/:id/follow', to: 'subjects#follow'
  get '/subjects/follow/index', to: 'subjects#index_followed'
  root 'welcome#index'
end
