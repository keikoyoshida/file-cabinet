Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  resources :documents, only: [:index, :new, :create, :show, :edit, :update]
  delete 'documents/:id', to: 'documents#destroy', as: :document_delete
end
