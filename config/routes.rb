Rails.application.routes.draw do
  namespace :api do
    resources :urls, only: [:index, :show, :create]
  end

  get '/:short_url', to: 'app#redirect' # record request info and redirect
end
