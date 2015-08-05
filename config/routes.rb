Rails.application.routes.draw do
  devise_for :users
  resources :verbiages

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
