Rails.application.routes.draw do

  devise_for :users

  resource :users

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
