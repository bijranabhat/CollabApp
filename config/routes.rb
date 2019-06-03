Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  devise_scope :user do
    get 'login', to:
    'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to:
    'devise/registrations#new'
  end
  
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
  
  namespace :private do 
    resources :conversations, only: [:create] do
      member do
        post :close
        post :open
      end
    end
    resources :messages, only: [:index, :create]
  end
  
end
#1.added root to: 'pages#index'

#2 Here I’ve used a resources method to declare routes for
# index, show, new, edit, create, update and destroy actions. 

#Then I’ve declared some custom collection routes to access pages with multiple Post instances.
#These pages are going to be dedicated for separate branches

