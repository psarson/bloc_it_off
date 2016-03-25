Rails.application.routes.draw do

  root to: 'users#show'
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :users, only: [:show]

  get 'about' => 'welcome#about'


end
