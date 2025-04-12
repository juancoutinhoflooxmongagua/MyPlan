Rails.application.routes.draw do
  resources :objectives do 
    resource :metas do
      resources :tasks
    end
  end 
    root 'objectives#index'  
end
