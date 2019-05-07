Rails.application.routes.draw do
  resources :users

  root to: 'bulma#form'
end
