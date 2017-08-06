Rails.application.routes.draw do
  namespace :api do
    resources :urls, only: [:index, :show, :create] do
      collection do
        get 'unique_visitors_stat'
      end
    end
  end

  get '/:short_url', to: 'app#redirect' # record request info and redirect
end
