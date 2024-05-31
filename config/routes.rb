# config/routes.rb

Rails.application.routes.draw do
  get 'pages/index1'
  get "a"=>"admin#promotions"
  post "a" => "admin#promotions"
  get "index1"=>"pages#index1"
  post "index1" =>"pages#index1"
  namespace :admin do
    get 'promo_codes/import', to: 'promo_codes#import_form', as: :import_promo_codes_form
    post 'promo_codes/import', to: 'promo_codes#import', as: :import_promo_codes
  end
  mount Spree::Core::Engine, at: '/'

  Spree::Core::Engine.routes.draw do
    namespace :admin do
      resources :custom_products, only: [:index, :show]
    end
  end
    
  
  
  mount MissionControl::Jobs::Engine, at: "/jobs"
  
  get "up" => "rails/health#show", as: :rails_health_check
end
