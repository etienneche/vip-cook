Rails.application.routes.draw do
  root to: 'pages#home'
  resources :recipes
  resources :ingredients

end
