Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'contact' => 'pages#contact'

  resources :posts do
    resources :comments
  end
end
