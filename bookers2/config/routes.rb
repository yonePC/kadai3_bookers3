Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] do
end

  resources :users, only: [:index,:show, :edit, :update]

end
