Alphadeville::Application.routes.draw do  

  root :to => 'home#index'  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) 

  
  scope "api" do
    resources :project
    resources :project_group
  end

end
