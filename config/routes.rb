Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :divisions do
    resources :employees
  end
  devise_scope :user do
    authenticated :user do
   root 'welcome#index', as: :authenticated_root
  end
  unauthenticated do
     root 'devise/sessions#new', as: :unauthenticated_root
   end
  end
end
