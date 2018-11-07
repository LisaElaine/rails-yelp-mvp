Rails.application.routes.draw do

  resources :restaurants, except: [ :edit, :update, :destroy] do
    resources :reviews, only: [ :create ]
  end
end
