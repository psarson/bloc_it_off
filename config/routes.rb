Rails.application.routes.draw do
<<<<<<< HEAD

  root to: 'users#show'
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :users, only: [:show]

  get 'about' => 'welcome#about'


=======
  root 'users#show'
  devise_for :users

  resources :users, only: :show do
    resources :items, only: [:create, :destroy]
  end

  get 'about' => 'welcome#about'

>>>>>>> b84b004af992fbeffdb9e2c0e1c775955b14ee7c
end
