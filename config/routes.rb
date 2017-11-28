Rails.application.routes.draw do

  resources :advertisements
  resources :topics
  resources :posts

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
