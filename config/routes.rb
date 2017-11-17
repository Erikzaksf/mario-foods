Rails.application.routes.draw do
  root :to => 'products#welcome'

  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
