Rails.application.routes.draw do
  devise_for :org_admins
  root 'org_admin/events#index'

  namespace :org_admin do
    resources :events, only: %w(index new edit)
  end

  namespace :api do
    namespace :org_admin do
      resources :events, only: %w(create show index update destroy)
    end
  end
end
