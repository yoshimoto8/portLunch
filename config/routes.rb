Rails.application.routes.draw do
  root to: 'top#index'
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :employers, controllers: { sessions: 'employers/sessions' }
  devise_for :workers, controllers: { sessions: 'workers/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
