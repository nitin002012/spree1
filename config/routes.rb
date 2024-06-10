Rails.application.routes.draw do
  resources :question
  get 'question/index'
  get 'question/show'
  get 'question/create'
  post 'questions/create'
  get 'question/destroy'
  delete 'question/destroy'

  get 'question/update'
  get 'api/index1'=> 'question#index1'
  get 'question/new'
  post 'question/new'
  get 'show_question'=> 'question#index1'


  resources :questions




  get 'pages/index1'
  get "a"=>"admin#promotions"
  post "a" => "admin#promotions"
  get "index1"=>"pages#index1"
  post "index1" =>"pages#index1"


  mount Spree::Core::Engine, at: '/'

  Spree::Core::Engine.routes.draw do

  end
  namespace :api do
    namespace :v1 do
      resources :surveys, only: [:index, :show, :create]
    end
  end


  mount MissionControl::Jobs::Engine, at: "/jobs"

  get "up" => "rails/health#show", as: :rails_health_check
end
