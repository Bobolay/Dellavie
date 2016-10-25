Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  root as: "root_without_locale", to: "application#root_without_locale"

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope ":locale", locale: /#{I18n.available_locales.map(&:to_s).join("|")}/ do
    post "order", to: "orders#create"
    root to: "pages#index"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end