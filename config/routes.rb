Rails.application.routes.draw do

  devise_for :users
  resources :verbiages
  resources :categories

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
