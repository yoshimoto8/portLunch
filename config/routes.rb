Rails.application.routes.draw do
  devise_for :employers
  devise_for :admins
  devise_for :workers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
