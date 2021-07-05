Rails.application.routes.draw do
  root 'users#index'
  post 'new' => 'users#new'
  get 'posts' => 'posts#index'
  post 'posts/new' => 'posts#new', as: 'new_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
