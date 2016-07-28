Rails.application.routes.draw do
  root 'contacts#index'
  # match 'contacts/:id' => 'contacts#edit', :via => [:get], :as => 'contact_edit'
  # resources :contacts, except: :show
  resources :contacts, :only => [:new, :create, :destroy, :edit, :update]
end
