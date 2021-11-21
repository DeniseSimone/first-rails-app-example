Rails.application.routes.draw do
  root to: 'pages#home'

  get '/about', to: 'pages#about', as: :about_us

  get '/contact', to: 'pages#contact'
end






