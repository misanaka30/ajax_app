Rails.application.routes.draw do
  root to: 'posts#index' 
  #get 'posts/new', to: 'posts#new' 
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'
  #idを渡されるように設定
end
