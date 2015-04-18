Rails.application.routes.draw do
  namespace :api do #, constraints: { subdomain: 'api' }, path: '/' do
    resources :products do
      resources :reviews, except: [:update, :show]
    end
  end

  root 'welcome#index'
end
