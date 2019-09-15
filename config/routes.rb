Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
   root :to => 'pages#index', as: :unauthenticated_root
  end

  authenticated do
    root :to => 'posts#index'
    match '*path', to: 'posts#index', via: :all, as: :authenticated_root
  end
end
