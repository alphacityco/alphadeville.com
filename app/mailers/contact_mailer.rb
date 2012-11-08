class ContactMailer < ActionMailer::Base
  
  def on_contact_us( sender_email, sender_message )
    @sender_message = sender_message
    mail(from: "[ADV] <#{sender_email}>", :to => "alphadeville@gmail.com", 
      :subject => 'Contact from alphadeville.com')
  end

end