Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :documents, only: [:index, :new, :create, :show, :edit, :update]
  delete 'documents/:id', to: 'documents#destroy', as: :document_delete
end
