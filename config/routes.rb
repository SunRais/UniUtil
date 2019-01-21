Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources  :users  
  resources  :subjects do
    resources :announcements
  end
  resources  :discussions do
    resources :comments
  end
  resources :lessons
  resources :notifications do
    collection do
      post :mark_as_read
    end
  end

  get '/subjects/:id/follow', to: 'subjects#follow'
  get '/subjects/:id/unfollow', to: 'subjects#unfollow'
  get '/subjects/follow/index', to: 'subjects#index_followed'
  get '/subjects/list/my_subjects', to: 'subjects#my_subjects'
  
  root 'welcome#index'

  default_url_options :host => "smtp.gmail.com"
end
