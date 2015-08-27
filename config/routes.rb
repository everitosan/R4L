Rails.application.routes.draw do
  constraints subdomain: 'api' do
    namespace :api, path:'/' do
      with_options only: [:index, :create, :new, :edit, :show, :update, :destroy] do |list_only|
        list_only.resources :post_contexts
        # list_only.resources :users
        # list_only.resources :posts
        # list_only.resources :post_categories
        # list_only.resources :type_goals
        # list_only.resources :statisctics
        # list_only.resources :goals
        # list_only.resources :projects
        # list_only.resources :payments
        # list_only.resources :events
        # list_only.resources :groups
      end
    end
  end
end
