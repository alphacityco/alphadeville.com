Alphadeville::Application.routes.draw do
  
  match '/send_mail', :controller=>"home", :action=>"send_mail", :as => :send_mail

  root :to => 'home#index'
end
