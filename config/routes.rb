Rails.application.routes.draw do
  resource :sessions, only: [:create, :new]
  resource :identity, only: [:create, :new]
  delete 'log_out' => 'sessions#destroy', as: :log_out
  get 'log_in' => 'sessions#new', as: :log_in
  get 'sign_up' => 'identities#new', as: :sign_up
  get 'event/show'

  get 'group/show'

  root 'home#index'

  get 'project'=>'project#index'
  get 'groups'=>'group#show'
  get 'events'=>'event#show'
  get 'settings'=>'settings#index'

  get 'professionals' => 'home#professionals'

  constraints subdomain: 'api' do
    namespace :api, path:'/' do
      with_options only: [:index, :create, :new, :edit, :show, :update, :destroy] do |list_only|
        list_only.resources :post_contexts
        list_only.resources :post_categories
        list_only.resources :users
        list_only.resources :posts
        list_only.resources :goal_categories
        list_only.resources :statistics
        list_only.resources :goals
        list_only.resources :personal_projects
        list_only.resources :payments
        list_only.resources :events
        list_only.resources :groups
      end
    end
  end
end
