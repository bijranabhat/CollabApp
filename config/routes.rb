Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login'}, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
#1.added root to: 'pages#index'
#2.replaced  devise_for users with  devise_for :users, path: '', path_names: { sign_in: 'login'}
