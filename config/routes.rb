Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'documents#index', as: :authenticated_root
  end

  root to: 'welcome#index'

  resources :documents, only: [:index, :new, :create, :show, :edit, :update]
  delete 'documents/:id', to: 'documents#destroy', as: :document_delete
end
