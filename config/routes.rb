Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :entries do
    resources :measurments
  end
  resources :measurment_categories


end
