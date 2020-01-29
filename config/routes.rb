Rails.application.routes.draw do
  root to: 'pages#home'
  resources :recipes do
    resources :ingredients
  end
end
