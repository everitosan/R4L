Rails.application.routes.draw do
  get 'event/show'

  get 'group/show'

  root 'home#index'

  get 'project'=>'project#index'
  get 'groups'=>'group#show'
  get 'events'=>'event#show'
  get 'settings'=>'settings#index'

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
