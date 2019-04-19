Rails.application.routes.draw do

  root to: "cocktails#index"

  delete 'cocktails/:id', to: 'cocktails#destroy', as: :destroy

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]

end