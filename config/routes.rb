Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>'home#index'
  get 'edit_user' => 'home#edit_user'
  post 'update_user' => 'home#update_user'
  get 'users_list' => "home#users_list"
  get 'profile' => "home#profile"
end
