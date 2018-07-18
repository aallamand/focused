Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'

  devise_for :users
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
  root to: 'pages#home'
  get "/pages/contact" => "pages#contact"
  resources :messages, only: [:new, :create]
  require "sidekiq/web"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

