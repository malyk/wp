Wf::Application.routes.draw do
  root :to => 'home#index'
  
  match 'login'   => 'sessions#create',   :as => :login
  match 'logout'  => 'sessions#destroy',  :as => :logout
  
  resources :activities
end
