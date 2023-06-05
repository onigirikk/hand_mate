Rails.application.routes.draw do
  namespace :seller do
    get 'products/new'
    get 'products/index'
    get 'products/show'
  end
  get 'homes/top'
  
  devise_for :admins,skip: [:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  devise_for :sellers,skip: [:passwords], controllers:{
    registrations: "seller/registrations",
    sessions: 'seller/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
