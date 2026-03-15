Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root 'tweets#index'
  resources :tweets do
    patch 'tweets/:id' => 'tweets#update'
    get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
    resources :likes, only: [:create, :destroy]
  end
  delete 'tweets/:id' => 'tweets#destroy'
  resources :perfumes
end
