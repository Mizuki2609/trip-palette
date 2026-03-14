Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'perfumes#new'
  #root 'tweets#index'
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  delete 'tweets/:id' => 'tweets#destroy'
  resources :perfumes
end
