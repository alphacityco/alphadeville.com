Alphadeville::Application.routes.draw do
  
  match '/send_mail', :controller=>"home", :action=>"send_mail", :as => :send_mail

  match '/embeded_section', :controller=>"home", :action=>"embeded_section", :as => :embeded_section  

  root :to => 'home#index'
end
