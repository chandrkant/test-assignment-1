Rails.application.routes.draw do
  root 'dashboard#index'
  get '/reports'=> "dashboard#report"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
