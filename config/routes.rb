Rails.application.routes.draw do
  root 'shops#index'
  resources :shops, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
end
