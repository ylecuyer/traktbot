Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount ServerNoError, at: 'bot'

  get '/oauth2/callback', to: 'oauth2#callback', as: 'oauth2_callback'
end
