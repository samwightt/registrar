Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  namespace :admin do
    root to: 'root#index'
  end

  root to: 'root#index'
end
