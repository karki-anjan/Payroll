Rails.application.routes.draw do
 

  
  get '/search', :to => 'search#show'
  post '/search', :to => 'search#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, 
  :controllers => { 
    :invitations => 'users_invitations' 
  }
  resources :employees
  resources :attendances
  resources :salaries
  
  root "employees#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
