Rails.application.routes.draw do
  resources :verbiages

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
