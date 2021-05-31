Rails.application.routes.draw do
  default_url_options :host => "http://localhost:3000"
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :admin do
  #   resources :users
  #   root to: "users#index"
  # end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api, defaults: { format: "json" } do
      scope module: :v1, constraints: ApiConstraint.new(version: 1) do
        resources :invoices
        resources :line_items
      end
    end
  end
