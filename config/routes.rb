Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tops#index"
  
  post 'tops' =>  'tops#create'
  
  resources :tops do
    collection do
      post 'purchase'
    end
  end
  
end
