Rails.application.routes.draw do

  devise_for :users
  
  resources :categories do
    resources :verbiages, dependent: :destroy
  end
  
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
