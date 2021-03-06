Rails.application.routes.draw do
  scope "(:locale)" do
    #resources :messages, :users, :categories, :listings, :application
    root to: 'users#home'
    get 'users/sign_in' => 'users#login'
    delete 'users/sign_in' => 'users#logout'
    post 'users/sign_in' => 'users#check'
    get 'users/sign_up' => 'users#signup'
    post 'users/sign_up' => 'users#create'
    delete 'users/delete/:id' => 'users#delete'
    get 'listings' => 'listings#index'
    get 'listings/contact/:id' => 'listings#contact'
    get 'listings/new' => 'listings#show'
    post 'listings/new' => 'listings#create'
    patch 'listings/update/:id' => 'listings#update'
    delete 'listings/new/:id' => 'listings#delete'
    post 'messages/:id' => 'messages#create'
    get 'messages' => 'messages#show'
    patch 'messages/:id' => 'messages#update'
    delete 'messages/:id' => 'messages#delete'
    get 'account/contacts' => 'users#contacts'
    get 'account/messages' => 'users#messages'
    get 'account/user' => 'users#profile'
    patch 'account/user' => 'users#update'
    patch 'account/user/pwd' => 'users#updatepwd'
    patch 'categories/:id' => 'categories#update'
    delete 'categories/:id' => 'categories#delete'
  end
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'Applications#index'
  #resources :homepage, only: [:index, :create]
end