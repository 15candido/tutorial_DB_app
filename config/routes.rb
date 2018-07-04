Rails.application.routes.draw do
  resources :comentarios
  resources :users
  root "application#hello"
end
